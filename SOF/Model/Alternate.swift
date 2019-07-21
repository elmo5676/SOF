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
    //    IT IS REPORTED IN METERS OR STATUTE MILES UP TO THE HUNDRETHS.
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
    private var icao: String
    private var aircraft: Aircraft
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
        self.icao = icao
        self.aircraft = aircraft
        setDelegates()
        let moc = stack.moc
        let ahasSearchable = AHASInputs().findAhasSearchableFrom(icao: icao) ?? ""
        let dc = dh.getAhasDateComponents()
        airportData = GeneralCDU.getAllAssociatedInfoFromIcaoFilterdByRwyLength(icao, rwyL: aircraft.minRunwayLength, moc: moc)
        compatableApproaches = compatableApproachesFilteredByRwyLength(aircraft: aircraft)
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
    
    private func runwayIds() -> [String] {
        var result: [String] = []
        guard let runways = airportData.runways else {return result}
        for runway in runways {
            if let id = runway.lowIdent_CD {
                result.append(id)
            }
            if let id = runway.highIdent_CD {
                result.append(id)
            }}
        return result
    }
    
    ///This provides compatable approaches based on the Aircraft's Capable approaches and Min runway Length
    private func compatableApproachesFilteredByRwyLength(aircraft: Aircraft) -> [TrmMin_CD] {
        var result: [TrmMin_CD] = []
        let allRunwayIDs = runwayIds()
        guard let approaches = airportData.trmMin else {return result}
        for capableApproach in aircraft.appTypeCapable {
            for approach in approaches {
                if let approachID = approach.trmIdent_CD {
                    if approachID.hasPrefix(capableApproach.rawValue) && allRunwayIDs.contains(approachID.runwayIdentifier) {
                        result.append(approach)
                    }}}}
        return result
    }
    
    ///Returns list of closed runways from an array of notams
    func getClosedRunways(notams: [String]) -> Set<String> {
        var runways: [String] = []
        for n in notams {
            if let startIndex = n.range(of: "RWY ")?.upperBound {
                if let endIndex = n.range(of: " CLSD")?.lowerBound {
                    let closedRunway = n[startIndex...endIndex]
                    let runway = String(closedRunway).components(separatedBy: "/")
                    for rwy in runway {
                        runways.append(rwy.trimmingCharacters(in: .whitespaces))
                    }}}}
        return Set(runways)
    }
    
    ///This provides compatable approaches based on the Aircraft's Capable approaches and Min runway Length
    private func compatableApproachesFilteredByClosedRunways(compatableApproaches: [TrmMin_CD], notams: [String]) -> [TrmMin_CD] {
        var result: [TrmMin_CD] = []
        let allRunwayIDs = runwayIds()
        for capableApproach in aircraft.appTypeCapable {
            for approach in compatableApproaches {
                if let approachID = approach.trmIdent_CD {
                    if approachID.hasPrefix(capableApproach.rawValue) {
                        for rwy in getClosedRunways(notams: notams) {
                            if allRunwayIDs.contains(rwy)  {
                                print("Runway: \(rwy) is closed")
                            } else { result.append(approach) }
                        }
                    }
                }}}
        return result
    }
    
    ///Ceiling:
    /**
     Case_1: No actual ceiling exists and required ceiling exists -> True (Approach available for that category)
     Case_2: No actual ceiling exists and no required ceiling exists -> False (Approach not available for that category)
     Case_3: actual ceiling exists and required ceiling exists -> True/False (True if actual > required + 500)
     Case_4: actual ceiling exists and no required ceiling exists -> False (Approach not available for that category)
     */
    private func compareActualCEILINGToRequired(actual: Double?, required: String?) -> Bool {
        if let actual = actual {
            if let required = required.getDoubleFromWX() {
                return actual >= required + 500
            } else {
                return false
            }
        } else {
            guard let _ = required else { return false }
            return true
        }}
    
    //TODO: - Verify
    ///Visability:
    /**
     Case_1: No actual visability exists and required visability exists -> True (Approach available for that category)
     Case_2: No actual visability exists and no required visability exists -> False (Approach not available for that category)
     Case_3: actual visability exists and required visability exists -> True/False (True if actual > required and actual > 2.0)
     Case_4: actual visability exists and no required visability exists -> False (Approach not available for that category)
     */
    private func compareActualVISABILITYtoRequired(actual: String?, required: String?) -> Bool {
        if let actual = actual.getDoubleFromWX() {
            guard let required = required?.getVisabilityFromNGA() else { return false }
                if actual >= 2.0 {
                    return actual >= required
                } else { return false }
        } else {
            guard let _ = required else { return false }
            return true
        }}
    
    ///Returns Bool for each category based on if the current metar supprts the approach.
    private func metarSutableAlternate(approach: TrmMin_CD, metar: Metar, aircraft: Aircraft) -> (catA: Bool, catB: Bool, catC: Bool, catD: Bool, catE: Bool, compatableApproach: TrmMin_CD?) {
        var catA = false
        var catB = false
        var catC = false
        var catD = false
        var catE = false
        var compatableApproach: TrmMin_CD?
        let rawText = metar.rawText ?? ""
        for category in aircraft.appCategory {
            switch category {
            case .A:
                let catA_Ceiling = compareActualCEILINGToRequired(actual: rawText.getLowestCeilingDoubleFromRawMetar(), required: approach.catAWxCl_CD)
                let catA_Visability = compareActualVISABILITYtoRequired(actual: metar.visibilityStatuteMiles, required: approach.catARv_CD)
                if catA_Ceiling && catA_Visability { catA = true }
            case .B:
                let catB_Ceiling = compareActualCEILINGToRequired(actual: rawText.getLowestCeilingDoubleFromRawMetar(), required: approach.catBWxCl_CD)
                let catB_Visability = compareActualVISABILITYtoRequired(actual: metar.visibilityStatuteMiles, required: approach.catBRv_CD)
                if catB_Ceiling && catB_Visability { catB = true }
            case .C:
                let catC_Ceiling = compareActualCEILINGToRequired(actual: rawText.getLowestCeilingDoubleFromRawMetar(), required: approach.catCWxCl_CD)
                let catC_Visability = compareActualVISABILITYtoRequired(actual: metar.visibilityStatuteMiles, required: approach.catCRv_CD)
                if catC_Ceiling && catC_Visability { catC = true }
            case .D:
                let catD_Ceiling = compareActualCEILINGToRequired(actual: rawText.getLowestCeilingDoubleFromRawMetar(), required: approach.catDWxCl_CD)
                let catD_Visability = compareActualVISABILITYtoRequired(actual: metar.visibilityStatuteMiles, required: approach.catDRv_CD)
                if catD_Ceiling && catD_Visability { catD = true }
            case .E:
                let catE_Ceiling = compareActualCEILINGToRequired(actual: rawText.getLowestCeilingDoubleFromRawMetar(), required: approach.catEWxCl_CD)
                let catE_Visability = compareActualVISABILITYtoRequired(actual: metar.visibilityStatuteMiles, required: approach.catERv_CD)
                if catE_Ceiling && catE_Visability { catE = true }
            }
        }
        //Below returns the approach if any of the categories are true, meaning the approach is both compatable with the aircraft and the weather supports the approach.
        if catA || catB || catC || catD || catE {compatableApproach = approach}
        return (catA: catA, catB: catB, catC: catC, catD: catD, catE: catE, compatableApproach: compatableApproach)
    }
    
    private func filterCompatableApproachesByWeather(metar: Metar?) -> [TrmMin_CD] {
        var result: [TrmMin_CD] = []
        guard let metar = metar else { return result }
        for approach in compatableApproaches {
            if let app = metarSutableAlternate(approach: approach, metar: metar, aircraft: self.aircraft).compatableApproach {
                result.append(app)
            }}
        return result
    }
    
    //  MARK: - Delegate Functions
    func hereIsTheMetar(_ metar: [Metar]?, metarLoc: MetarLoc, refreshUI: Bool) {
        guard let metars = metar else {return}
        let metar = metars[0]
        log.debug(metar.rawText!)
        log.debug(metar.visibilityStatuteMiles)
        log.debug(metar.vertVisFt)
        print("************************************")
        let approaches = filterCompatableApproachesByWeather(metar: metar)
        for app in approaches {
            log.debug(app.trmIdent_CD)
        }
    }
    
    func hereAreTheNotams(_ notams: NotamList) {
        guard let notams = notams[self.icao] else { return }
        print(compatableApproachesFilteredByClosedRunways(compatableApproaches: self.compatableApproaches, notams: notams))
        // TODO: FilterOut the closed Runways
    }
    
    func hereAreTheTafs(_ taf: [Taf]?) {
        //        print(taf)
    }
    
    func hereIsTheBirdCondition(_ ahas: [Ahas]) {
        //        print(ahas)
    }
    
    
    
}
