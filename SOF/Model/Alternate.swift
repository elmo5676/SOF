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
    private var airportStuff: (
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
    
    // TODO: Fix AhasInput
    ///Allow for the use of ICAO... thanks retards at AHAS... you have it in your webpage but dont allow for it.... Do you EVEN code?!
    init(icao: String,
         aircraft: Aircraft) {
        setDelegates()
        let moc = stack.moc
        let ahasSearchable = AHASInputs().findAhasSearchableFrom(icao: icao) ?? ""
        let dc = getDateComponents()
        airportStuff = GeneralCDU.getAllAssociatedInfoFromIcao(icao, moc: moc)
        notamF = NotamFetcher(icaos: [icao], delegate: self)
        metarDL = MetarDownLoader(icao: icao, delegate: self)
        tafDL = TafDownloader(icao: icao, delegate: self)
        ahasDL = AhasDownLoader(area: ahasSearchable, delegate: self, month: dc.month, day: dc.day, hourZ: dc.hourZ)
        dafifTester()
    }
    
    func setDelegates() {
        notamF?.delegate = self
        metarDL?.delagate = self
        tafDL?.delegate = self
        ahasDL?.delegate = self
    }
    
    func getDateComponents() -> (month: String, day: String, hourZ: String) {
        let now = Date()
        var cal = Calendar.current
        cal.timeZone = TimeZone(abbreviation: "UTC")!
        let month = String(cal.component(.month, from: now))
        let day = String(cal.component(.day, from: now))
        let hourZ = String(cal.component(.hour, from: now))
        return (month: month, day: day, hourZ: hourZ)
    }
    
    func dafifTester() {
        guard let runways = airportStuff.runways else {return}
        for rwy in runways {
            print(rwy.highIdent_CD)
            print(rwy.lowIdent_CD)
        }
        
    }
}
