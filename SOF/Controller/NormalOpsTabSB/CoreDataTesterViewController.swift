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
    }
    
    @IBAction func b3(_ sender: UIButton) {
        let ac = NewAircraft(appTypeCapable: [.WAAS_GPS, .RNAV, .ILS, .TACAN,.VOR_NO_DME, .VOR_BASED_ON_VORDME_OR_VORTAC], appCategory: [.A, .B, .C, .D, .E], minRunwayLength: 3000, maxCrossWind: 15, maxSustainedWind: 30)
        let alt = Alternate(icao: "KBAB", aircraft: ac)
//        for app in alt.compatableApproaches {
//            print("Identifier: \(app.trmIdent_CD!)")
//            print("Cat A TERMINAL MINIMA WEATHER CEILING: \(app.catAWxCl_CD!)")
//            print("Cat B TERMINAL MINIMA WEATHER CEILING: \(app.catBWxCl_CD!)")
//            print("Cat C TERMINAL MINIMA WEATHER CEILING: \(app.catCWxCl_CD!)")
//            print("Cat D TERMINAL MINIMA WEATHER CEILING: \(app.catDWxCl_CD!)")
//            print("Cat E TERMINAL MINIMA WEATHER CEILING: \(app.catEWxCl_CD!)")
//            print("Cat C TERMINAL MINIMA DESCENT HEIGHT: \(app.catCDh_CD!)")
//            print("Cat C TERMINAL MINIMA HAT/HAA/HAL: \(app.catCHa_CD!)")
//            print("Cat A TERMINAL MINIMA RUNWAY VISIBILITY: \(app.catARv_CD!)")
//            print("Cat B TERMINAL MINIMA RUNWAY VISIBILITY: \(app.catBRv_CD!)")
//            print("Cat C TERMINAL MINIMA RUNWAY VISIBILITY: \(app.catCRv_CD!)")
//            print("Cat D TERMINAL MINIMA RUNWAY VISIBILITY: \(app.catDRv_CD!)")
//            print("Cat E TERMINAL MINIMA RUNWAY VISIBILITY: \(app.catERv_CD!)")
//            print("Cat C TERMINAL MINIMA PREVAILING WEATHER VISIBILITY: \(app.catCWxPv_CD!)")
//        }
    }
    
    @IBAction func b4(_ sender: UIButton) {
    }
    
    
    
    

}
