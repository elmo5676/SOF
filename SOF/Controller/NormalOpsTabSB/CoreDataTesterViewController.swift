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
        let ac = T6A()
        let alt = Alternate(icao: "KSFO", aircraft: ac)
        for app in alt.compatableApproaches {
            print("Identifier: \(app.trmIdent_CD!)")
            print("Cat C Decision Height: \(app.catCDh_CD!)")
            print("Cat C Height above Aerodrome: \(app.catCHa_CD!)")
            print("Cat C Required Visability: \(app.catCRv_CD!)")
            print("Cat C Ceiling: \(app.catCWxCl_CD!)")
            print("Cat C Prevailing Vis: \(app.catCWxPv_CD!)")
        }
    }
    
    @IBAction func b4(_ sender: UIButton) {
    }
    
    
    
    

}
