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
    var arptDic: [String? : Rwy_CD] = [:]
    
    @IBAction func b1(_ sender: UIButton) {
        load()
    }
    
    @IBAction func b2(_ sender: UIButton) {
        stack.deleteAllCoreData()
    }
    
    @IBAction func b3(_ sender: UIButton) {
//        
//        allRwys = rwyCDU.getRwysGreaterThan(8000.00, pc: pc!)
//        for rwy in allRwys {
//            print(rwy.arptIdent_CD)
////            arptDic[arptCDU.getArptWithId(id: rwy.arptIdent_CD!, pc: pc!)!.icao_CD] = rwy
//        }
//        print(arptDic)
    }
    
    @IBAction func b4(_ sender: UIButton) {
//        for rwy in allRwys {
//            if rwy.arptIdent_CD != nil {
//                let arpt = arptCDU.getArptWithId(id: rwy.arptIdent_CD!, pc: pc!)
//                allArpts.append(arpt!)
//            }
//            for air in allArpts {
//                print(air.icao_CD)
//            }
//            arptDic[arptCDU.getArptWithId(id: rwy.arptIdent_CD!, pc: pc!)!.icao_CD] = rwy
//        }
    }
    
    
    
    

}
