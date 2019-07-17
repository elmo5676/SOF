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
    
    override func viewDidAppear(_ animated: Bool) {
        runSpinner(false)
    }
    
    // MARK: - Delegate Functions
    func jsonIncrementCounter() {
        log.debug("JSON Increment Counter")
        DispatchQueue.main.async {
            self.dafifIncCounter += 1
            print(self.dafifIncCounter)
            print(self.dafifIncTotal)
            let c = Double(self.dafifIncCounter)
            let t = Double(self.dafifIncTotal)
            let dafifIncRatio = (c/t)
            self.dafifLoaderProgress.progress = Float(dafifIncRatio)
        }
    }
    
    func loadJSONafterDownloadedAndProcessed() {
        stack.loadJsonIntoCoreData()
        log.debug("CD was Loaded")
        DispatchQueue.main.async {
            self.runSpinner(false)
        }
    }
    
    var stack = DAFIFCDStack()
    var pc: NSPersistentContainer?
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var dafifLoaderProgress: UIProgressView!
    var dafifIncTotal = DAFIFCDStack().wantedData.count
    var dafifIncCounter = 0
    
    
    func load() {
        dafifIncCounter = 0
        runSpinner(true)
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
    
    func runSpinner(_ run: Bool) {
        switch run {
        case true:
            spinner.startAnimating()
        case false:
            spinner.stopAnimating()
        }
        
    }
    
    @IBAction func b1(_ sender: UIButton) {
        load()
    }
    
    @IBAction func b2(_ sender: UIButton) {
        stack.deleteAllCoreData()
    }
    
    func doSomething(_ notamList: NotamList) {
        print(notamList)
        for (key, value) in notamList {
            print(value)
        }
    }
    
    
    @IBAction func b3(_ sender: UIButton) {
        let alt = Alternate(icao: "KMHR", aircraft: .T38A)
    }
    
    @IBAction func b4(_ sender: UIButton) {
        let moc = DAFIFCDStack().moc
        let airportStuff = GeneralCDU.getAllAssociatedInfoFromIcao("KMHR", moc: moc)
        guard let mins = airportStuff.trmMin else {return}
        guard let acoms = airportStuff.acom else {return}
        guard let runways = airportStuff.runways else {return}
        guard let fuelOils = airportStuff.fuelOil else {return}
        guard let gens = airportStuff.gen else {return}
        guard let ils = airportStuff.ils else {return}
        guard let svcRmks = airportStuff.svcRmk else {return}
        for mn in mins {
            print("************* MINS ******************")
            print(mn.proc_CD!)
            print(mn.appType_CD!.removeAllCharOf("*"))
            print(mn.trmIdent_CD!)
            print(mn.catEDh_CD!)
        }
        
        for ac in acoms {
            print("************ Acom *******************")
            print(ac.commType_CD!)
            print(ac.commName_CD!)
            print(ac.freq1_CD.frequency)
            print(ac.freq2_CD.frequency)
            print(ac.freq3_CD.frequency)
            print(ac.freq4_CD.frequency)
            print(ac.freq5_CD.frequency)
            print(ac.sOprH_CD.frequency)
        }
        
        for fo in fuelOils {
            print("************* FUEL OIL ******************")
            print(fo.fuel_CD!)
            print(fo.jasu_CD!)
            print(fo.oil_CD!)
        }
        
        for gn in gens {
            print("************ GEN *******************")
            print(gn.oprHrs_CD!)
            print(gn.notam_CD!)
            print(gn.time_CD!)
            print(gn.altName_CD!)
            print(gn.daylightSave_CD!)
            print(gn.daylightSave_CD!)
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
