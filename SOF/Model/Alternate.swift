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
    
    func hereIsTheMetar(_ metar: [Metar]?, metarLoc: MetarLoc, refreshUI: Bool) {
        print(metar)
    }
    
    func hereAreTheTafs(_ taf: [Taf]?) {
        print(taf)
    }
    
    func hereIsTheBirdCondition(_ ahas: [Ahas]) {
        print(ahas)
    }
    
    func hereAreTheNotams(_ notams: NotamList) {
        print(notams)
    }
    
    private var icao: String = ""
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
   
}
