//
//  Alternate.swift
//  SOF
//
//  Created by Matthew Elmore on 7/17/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import CoreData

struct Alternate: MetarDelegate, TafDelegate, AhasDelegate, NotamFetcherDelegate {
    
//    MARK: - VISABILITY
//    CAT_X_RV:
//    THE ABILITY, AS DETERMINED BY ATMOSPHERIC CONDITIONS, TO SEE AND IDENTIFY THE RUNWAY ENVIRONMENT.
//    PREVAILING VISIBILITY IS THE GREATEST HORIZONTAL VISIBILITY THROUGHOUT HALF OF THE HORIZON CIRCLE (180 DEGREES) AND IS NOT NECESSARILY CONTINUOUS.
//    IT IS REPORTED IN METERS OR STATUTE
//    MILES UP TO THE HUNDRETHS.
//    RUNWAY VISUAL RANGE (RVR) IS AN INSTRUMENTALLY DERIVED VALUE THAT REPRESENTS THE HORIZONTAL DISTANCE A PILOT CAN SEE FROM THE APPROACH END OF THE RUNWAY.
//    REPORTED IN METERS OR STATUTE MILES.  (DAFIF)
//
//    THERE ARE FIVE APPROACH CATEGORIES WHICH ARE BASED ON 1.3 TIMES THE STALL SPEED IN THE     LANDING CONFIGURATION:
//    APPROACH
//    CATEGORY             SPEED
//    A              LESS THAN 91 KNOTS
//    B              91 KNOTS OR MORE BUT LESS THAN 121 KNOTS
//    C              121 KNOTS OR MORE BUT LESS THAN 141 KNOTS
//    D              141 KNOTS OR MORE BUT LESS THAN 166 KNOTS
//    E              166 KNOTS OR MORE
//
//    DATA PRECEDED BY A / (SLASH) INDICATES RUNWAY VISUAL RANGE (RVR).
//    DATA PRECEDED BY A - (DASH) INDICATES PREVAILING VISIBILITY.
//
    
//    MARK: - PREVAILING VISIBILITY:
//    CAT_X_HA:
//    HEIGHT ABOVE TOUCHDOWN ZONE (HAT) IS USED IN CONJUNCTION WITH ALL STRAIGHT-IN MINIMA.
//    HEIGHT ABOVE AIRPORT (HAA) IS USED IN CONJUNCTION WITH ALL CIRCLING MINIMA.
//    HEIGHT ABOVE LANDING (HAL) IS USED IN CONJUCTION WITH HELICOPTER INSTRUMENT APPROACH PROCEDURES.
    
//    MARK: - WEATHER CEILING
//    CAT_X_WX_CL:
//    CEILING:  A VALUE IN FEET OR METERS EQUAL TO OR GREATER THAN THE HEIGHT OF THE DECISION
//    HEIGHT (DH)/DECISION ALTITUDE (DA), OR MINIMUM DESCENT ALTITUDE (MDA) ABOVE THE AIRPORT OR HELIPORT ELEVATION.  (DAFIF)
//    WHEN THE CATEGORY DESCENT HEIGHT EQUALS RADIO ALTIMETER THE FIRST TWO SPACES OF THE CATEGORY WEATHER WILL BE BLANK FOLLOWED BY THE LETTERS "RA" AND NUMERICS, EX. "RA00100".
//    IF THE CATEGORY DESCENT HEIGHT EQUALS WITHOUT RADIO ALTIMETER THEN THE FIRST FOUR CHARACTERS WILL EQUAL "WORA" FOLLOWED BY ALL SPACES, EX. "WORA".
    
//    MARK: - MINIMA DESCENT HEIGHT
//    CAT_X_DH:
//    MARK: PRECISION APPROACH:
//    DECISION ALTITUDE (DA)
//    DECISION HEIGHT (DH)
//    THE HEIGHT, EXPRESSED IN FEET ABOVE MEAN SEA LEVEL (AMSL), ABOVE THE HIGHEST ELEVATION IN THE TOUCHDOWN ZONE, SPECIFIED FOR A STRAIGHT IN OR GLIDE SLOPE APPROACH AT WHICH AN AIRCRAFT MUST INITIATE A MISSED APPROACH PROCEDURE IF THE REQUIRED VISUAL REFERENCE HAS NOT BEEN ESTABLISHED.
//
//    MARK: NON-PRECISION APPROACH:
//    MINIMUM DESCENT ALTITUDE (MDA)
//    THE HEIGHT, EXPRESSED IN FEET ABOVE MEAN SEA LEVEL (MSL), TO WHICH DESCENT IS AUTHORIZED ON FINAL APPROACH OR DURING CIRCLE-TO-LAND MANEUVERS IN EXECUTION OF A STANDARD APPROACH
//    PROCEDURE WHERE NO ELECTRONIC GLIDESLOPE IS PROVIDED.
    
    private let stack = DAFIFCDStack()
    private var metarDL: MetarDownLoader?
    private var tafDL: TafDownloader?
    private var ahasDL: AhasDownLoader?
    private var notamF: NotamFetcher?
    private let dh = DateHandler()
    private var currentMetar: [Metar]?
    private var tafs: [Taf]?
    private var ahas: [Ahas]?
    private var notams: NotamList?
    
    
    ///This provides compatable approaches based on the Aircraft's Capable approaches and Min runway Length
    public var compatableApproaches: [TrmMin_CD] = []
    
    ///Returns All DAFIF pertaining to an ICAO; [Rwy_CD] is filtered by Min Runway Length.
    public var airportData: (
    airport: Arpt_CD?,
    runways: [Rwy_CD]?,
    addRwy: [AddRwy_CD]?,
    trmSeg: [TrmSeg_CD]?,
    trmRmk: [TrmRmk_CD]?,
    trmPar: [TrmPar_CD]?,
    trmClb: [TrmClb_CD]?,
    trmMsa: [TrmMsa_CD]?,
    trmMin: [TrmMin_CD]?,
    svcRmk: [SvcRmk_CD]?,
    anav: [Anav_CD]?,
    acom: [Acom_CD]?,
    acomRmk: [AcomRmk_CD]?,
    gen: [Gen_CD]?,
    fuelOil: [Fueloil_CD]?,
    ils: [Ils_CD]?,
    aGear: [Agear_CD]?)
    
    init(icao: String,
         aircraft: Aircraft) {
        setDelegates()
        let moc = stack.moc
        let ahasSearchable = AHASInputs().findAhasSearchableFrom(icao: icao) ?? ""
        let dc = getDateComponents()
        airportData = GeneralCDU.getAllAssociatedInfoFromIcaoFilterdByRwyLength(icao, rwyL: aircraft.minRunwayLength, moc: moc)
        compatableApproaches = compatableApproaches(aircraft: aircraft)
        notamF = NotamFetcher(icaos: [icao], delegate: self)
        metarDL = MetarDownLoader(icao: icao, delegate: self)
        tafDL = TafDownloader(icao: icao, delegate: self)
        ahasDL = AhasDownLoader(area: ahasSearchable, delegate: self, month: dc.month, day: dc.day, hourZ: dc.hourZ)
    }
    
    private func setDelegates() {
        notamF?.delegate = self
        metarDL?.delagate = self
        tafDL?.delegate = self
        ahasDL?.delegate = self
    }
    
    ///Returns string date components for now to enter in ahasDownloader.
    private func getDateComponents() -> (month: String, day: String, hourZ: String) {
        let now = Date()
        var cal = Calendar.current
        cal.timeZone = TimeZone(abbreviation: "UTC")!
        let month = String(cal.component(.month, from: now))
        let day = String(cal.component(.day, from: now))
        let hourZ = String(cal.component(.hour, from: now))
        return (month: month, day: day, hourZ: hourZ)
    }
    
    ///This provides compatable approaches based on the Aircraft's Capable approaches and Min runway Length
    private func compatableApproaches(aircraft: Aircraft) -> [TrmMin_CD] {
        var result: [TrmMin_CD] = []
        var allRunwayIDs: [String] = []
        guard let approaches = airportData.trmMin else {return result}
        guard let runways = airportData.runways else {return result}
        for runway in runways {
            if let id = runway.lowIdent_CD {
                allRunwayIDs.append(id)
            }
            if let id = runway.highIdent_CD {
                allRunwayIDs.append(id)
            }}
        for capableApproach in aircraft.appTypeCapable {
            for approach in approaches {
                guard let approachID = approach.trmIdent_CD else {return result}
                    if approachID.hasPrefix(capableApproach.rawValue) && allRunwayIDs.contains(approachID.runwayIdentifier) {
                        result.append(approach)
                    }}}
        return result
    }
    
    ///Returns Bool based on if the current metar supprts the approach.
    func metarSutableAlternate(approach: TrmMin_CD, metar: Metar) -> Bool {
        var result = false
        let rawText = metar.rawText ?? ""
        let ceilings = rawText.getCeilingFromRawMetar()
        
        return result
    }
    
    
//  MARK: - Delegate Functions
    func hereIsTheMetar(_ metar: [Metar]?, metarLoc: MetarLoc, refreshUI: Bool) {
//        print(metar)
    }
    
    func hereAreTheTafs(_ taf: [Taf]?) {
//        print(taf)
    }
    
    func hereIsTheBirdCondition(_ ahas: [Ahas]) {
//        print(ahas)
    }
    
    func hereAreTheNotams(_ notams: NotamList) {
//        print(notams)
    }
   
}
