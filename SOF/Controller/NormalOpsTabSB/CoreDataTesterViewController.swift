//
//  CoreDataTesterViewController.swift
//  SOF
//
//  Created by Matthew Elmore on 7/9/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit
import CoreData

class CoreDataTesterViewController: UIViewController, JSONLoaderDelagate, JsonCounterDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pc = stack.persistentContainer
    }
    
    // MARK: - Delegate Functions
    func jsonIncrementCounter() {
    }
    
    func loadJSONafterDownloadedAndProcessed() {
        stack.loadJsonIntoCoreData()
        log.debug("CD was Loaded")
    }
    
    var stack = DAFIFCDStack()
    var pc: NSPersistentContainer?
    func load() {
        print("Number of Entities:: \(stack.wantedData.count)")
        stack.deleteAllCoreData()
        var dafif = DAFIFDataController(wantedData: stack.wantedData)
        dafif.jsonLoaderDelegate = self
        dafif.jsonIncrementorDelegate = self
        dafif.handleDAFIF()
    }
    

    let rwyCDU = RwyCDU()
    var allRwys: [Rwy_CD] = []
    let arptCDU = ArptCDU()
    var allArpts: [Arpt_CD] = []
    var arptDic: [String? : [Any]] = [:]
    
    @IBAction func b1(_ sender: UIButton) {
        load()
    }
    
    @IBAction func b2(_ sender: UIButton) {
        stack.deleteAllCoreData()
    }
    
    
    @IBAction func b3(_ sender: UIButton) {
//        let moc = stack.bmoc
//        allArpts = arptCDU.getAll(moc: moc)
//        allRwys = rwyCDU.getAll(moc: moc)
//        for airport in allArpts {
//            for runway in allRwys {
//                if runway.arptIdent_CD == airport.arptIdent_CD {
//                    let i = allRwys.firstIndex(of: runway)
//                    allRwys.remove(at: i!)
//                }
//            }
//        }
//        stack.saveBackgroundContext()
    }
    
    @IBAction func b4(_ sender: UIButton) {
        let moc = DAFIFCDStack().moc
//        guard let airport = ArptCDU().getArptWithICAO(icao: "KSFO", moc: moc) else {return}
//        let airportStuff = GeneralCDU.getAllAssociatedInfoFromAirportID(airport.arptIdent_CD!, moc: moc)
        let airportStuff = GeneralCDU.getAllAssociatedInfoFromIcao("KBAB", moc: moc)
        guard let mins = airportStuff.trmMin else {return}
        guard let acoms = airportStuff.acom else {return}
        guard let runways = airportStuff.runways else {return}
        guard let fuelOils = airportStuff.fuelOil else {return}
        guard let gens = airportStuff.gen else {return}
        guard let ils = airportStuff.ils else {return}
        guard let svcRmks = airportStuff.svcRmk else {return}
        for min in mins {
            print("************* MINS ******************")
            print(min.proc_CD!)
            print(min.appType_CD!.removeAllCharOf("*"))
            print(min.trmIdent_CD!)
            print(min.catEDh_CD!)
        }
        
        for acom in acoms {
            print("************ Acom *******************")
            print(acom.commType_CD!)
            print(acom.commName_CD!)
            print(acom.freq1_CD.frequency)
            print(acom.freq2_CD.frequency)
            print(acom.freq3_CD.frequency)
            print(acom.freq4_CD.frequency)
            print(acom.freq5_CD.frequency)
            print(acom.sOprH_CD.frequency)
        }
        
        for fo in fuelOils {
            print("************* FUEL OIL ******************")
            print(fo.fuel_CD!)
            print(fo.jasu_CD!)
            print(fo.oil_CD!)
        }
        
        for gen in gens {
            print("************ GEN *******************")
            print(gen.oprHrs_CD!)
            print(gen.notam_CD!)
            print(gen.time_CD!)
            print(gen.altName_CD!)
            print(gen.daylightSave_CD!)
            print(gen.daylightSave_CD!)
        }

        
        for il in ils {
            print("*********** ILS ********************")
            print(il.chan_CD!)
            print(il.elev_CD!)
            print(il.compType_CD!)
            print(il.freq_CD.ilsFrequency)
            print(il.ilsBrg_CD!)
            print(il.ilsCat_CD!)
            print(il.magVar_CD!)
            print(il.name_CD!)
            print(il.rwyIdent_CD!)
        }
        
        for sv in svcRmks {
            print("********** Remarks *********************")
            print(sv.remarks_CD!)
            print(sv.type_CD!)
        }
        
        for rw in runways {
            print("************ Runways *******************")
            print(rw.heSlope_CD!)
            print(rw.leSlope_CD!)
            print(rw.highIdent_CD!)
            print(rw.lowIdent_CD!)
        }


    }
    
    
    
    

}
