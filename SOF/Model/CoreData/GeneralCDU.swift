//
//  GeneralCDU.swift
//  SOF
//
//  Created by Matthew Elmore on 7/15/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import CoreData


struct GeneralCDU {
    
    
    static func getAllAssociatedInfoFromAirportID(_ id: String, moc: NSManagedObjectContext) -> (
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
        aGear: [Agear_CD]?) {
            return (runways: RwyCDU.getWithAirPortId(id: id, moc: moc),
                    addRwy: AddRwyCDU.getWithAirPortId(id: id, moc: moc),
                    trmSeg: TrmSegCDU.getWithAirPortId(id: id, moc: moc),
                    trmRmk: TrmRmkCDU.getWithAirPortId(id: id, moc: moc),
                    trmPar: TrmParCDU.getWithAirPortId(id: id, moc: moc),
                    trmClb: TrmClbCDU.getWithAirPortId(id: id, moc: moc),
                    trmMsa: TrmMsaCDU.getWithAirPortId(id: id, moc: moc),
                    trmMin: TrmMinCDU.getWithAirPortId(id: id, moc: moc),
                    svcRmk: SvcRmkCDU.getWithAirPortId(id: id, moc: moc),
                    anav: AnavCDU.getWithAirPortId(id: id, moc: moc),
                    acom: AcomCDU.getWithAirPortId(id: id, moc: moc),
                    acomRmk: AcomRmkCDU.getWithAirPortId(id: id, moc: moc),
                    gen: GenCDU.getWithAirPortId(id: id, moc: moc),
                    fuelOil: FueloilCDU.getWithAirPortId(id: id, moc: moc),
                    ils: IlsCDU.getWithAirPortId(id: id, moc: moc),
                    aGear: AgearCDU.getWithAirPortId(id: id, moc: moc))
    }
    
    static func getAllAssociatedInfoFromIcao(_ icao: String, moc: NSManagedObjectContext) -> (
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
        aGear: [Agear_CD]?) {
            var id = ""
            var airportReturn: Arpt_CD?
            if let airport = ArptCDU().getArptWithICAO(icao: icao, moc: moc) {
                airportReturn = airport
                id = airport.arptIdent_CD!
            }
            return (airport: airportReturn,
                    runways: RwyCDU.getWithAirPortId(id: id, moc: moc),
                    addRwy: AddRwyCDU.getWithAirPortId(id: id, moc: moc),
                    trmSeg: TrmSegCDU.getWithAirPortId(id: id, moc: moc),
                    trmRmk: TrmRmkCDU.getWithAirPortId(id: id, moc: moc),
                    trmPar: TrmParCDU.getWithAirPortId(id: id, moc: moc),
                    trmClb: TrmClbCDU.getWithAirPortId(id: id, moc: moc),
                    trmMsa: TrmMsaCDU.getWithAirPortId(id: id, moc: moc),
                    trmMin: TrmMinCDU.getWithAirPortId(id: id, moc: moc),
                    svcRmk: SvcRmkCDU.getWithAirPortId(id: id, moc: moc),
                    anav: AnavCDU.getWithAirPortId(id: id, moc: moc),
                    acom: AcomCDU.getWithAirPortId(id: id, moc: moc),
                    acomRmk: AcomRmkCDU.getWithAirPortId(id: id, moc: moc),
                    gen: GenCDU.getWithAirPortId(id: id, moc: moc),
                    fuelOil: FueloilCDU.getWithAirPortId(id: id, moc: moc),
                    ils: IlsCDU.getWithAirPortId(id: id, moc: moc),
                    aGear: AgearCDU.getWithAirPortId(id: id, moc: moc))
    }
    
    static func getAllAssociatedInfoFromIcaoFilterdByRwyLength(_ icao: String, rwyL: Double, moc: NSManagedObjectContext) -> (
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
        aGear: [Agear_CD]?) {
            var id = ""
            var airportReturn: Arpt_CD?
            if let airport = ArptCDU().getArptWithICAO(icao: icao, moc: moc) {
                airportReturn = airport
                id = airport.arptIdent_CD!
            }
            return (airport: airportReturn,
                    runways: RwyCDU.getWithAirPortIdAndMinRunwayLength(id: id, rwyL: rwyL, moc: moc),
                    addRwy: AddRwyCDU.getWithAirPortId(id: id, moc: moc),
                    trmSeg: TrmSegCDU.getWithAirPortId(id: id, moc: moc),
                    trmRmk: TrmRmkCDU.getWithAirPortId(id: id, moc: moc),
                    trmPar: TrmParCDU.getWithAirPortId(id: id, moc: moc),
                    trmClb: TrmClbCDU.getWithAirPortId(id: id, moc: moc),
                    trmMsa: TrmMsaCDU.getWithAirPortId(id: id, moc: moc),
                    trmMin: TrmMinCDU.getWithAirPortId(id: id, moc: moc),
                    svcRmk: SvcRmkCDU.getWithAirPortId(id: id, moc: moc),
                    anav: AnavCDU.getWithAirPortId(id: id, moc: moc),
                    acom: AcomCDU.getWithAirPortId(id: id, moc: moc),
                    acomRmk: AcomRmkCDU.getWithAirPortId(id: id, moc: moc),
                    gen: GenCDU.getWithAirPortId(id: id, moc: moc),
                    fuelOil: FueloilCDU.getWithAirPortId(id: id, moc: moc),
                    ils: IlsCDU.getWithAirPortId(id: id, moc: moc),
                    aGear: AgearCDU.getWithAirPortId(id: id, moc: moc))
    }
}
