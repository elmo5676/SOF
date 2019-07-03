//
//  SetStatusViewController.swift
//  SOF
//
//  Created by Matthew Elmore on 6/20/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//


import UIKit
import AWSAppSync
import AWSMobileClient

class SetStatusViewController: UIViewController, UITextFieldDelegate, MetarDelegate, AhasDelegate {
    
    var appSyncClient: AWSAppSyncClient?
    let aws = AWSMobileClient.sharedInstance()
    let log = SwiftyBeaver.self
    let console = ConsoleDestination()
    let uds = UserDefaultSetup()
    var metarStore: MetarDownLoader?
    var ahasDownloader: AhasDownLoader?
    var ahas: [Ahas]? = []
    var metar: Metar? = nil
    var tafs: [Taf]? = []
    var notams: [Notam]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        setFormatting()
        appSyncClient = appDelegate.appSyncClient
        metarStore?.delagate = self
        ahasDownloader?.delegate = self
        updateWx()
        getBirdCondition()
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    @IBOutlet var allTextFields: [UITextField]!
    @IBOutlet weak var u2StatusOutlet: UITextField!
    @IBOutlet weak var t38StatusOutlet: UITextField!
    @IBOutlet weak var u2RestrictionsOutlet: UITextField!
    @IBOutlet weak var t38RestrictionsOutlet: UITextField!
    @IBOutlet weak var u2AlternatesOutlet: UITextField!
    @IBOutlet weak var t38AlternatesOutlet: UITextField!
    @IBOutlet weak var navaidsOutlet: UITextField!
    @IBOutlet weak var approachLightsOutlet: UITextField!
    @IBOutlet weak var localAirfieldsOutlet: UITextField!
    @IBOutlet weak var birdStatusOutlet: UITextField!
    @IBOutlet weak var fitsOutlet: UITextField!
    @IBOutlet weak var activeRunwayOutlet: UITextField!
    @IBOutlet weak var runwayConditionsOutlet: UITextField!
    @IBOutlet weak var dateOutlet: UITextField!
    @IBOutlet weak var timeOutlet: UITextField!
    @IBOutlet weak var sofOnDutyOutlet: UITextField!
    
    @IBOutlet var itemLabels: [UILabel]!
    
    @IBOutlet weak var updateStatusButtonOutlet: UIButton!
    @IBAction func updateStatusButton(_ sender: UIButton) {
        updateStatusButtonOutlet.showPressed()
        setStatus()
        getStatus()
    }
    
    
    // MARK: - Bird Condition
    func getBirdCondition(_ ahas: [Ahas]) {
        self.ahas = ahas
    }
    
    func getBirdCondition() {
        let beale = AHASInputs.MilitaryAirfields.BEALE_AFB
        let now = Date()
        let calender = Calendar.current
        let month = String(calender.component(.month, from: now))
        let day = String(calender.component(.day, from: now))
        let hourZ = String(calender.component(.hour, from: now))
        ahasDownloader = AhasDownLoader(area: beale, delegate: self, month: month, day: day, hourZ: hourZ, duration: 5)
    }
    
    // MARK: - Weather
    func getCurrentMetar(_ metar: [Metar]?, metarLoc: MetarLoc, refreshUI: Bool) {
    }
    
    func updateWx(){
        metarStore = MetarDownLoader(icao: "KBAB", delagate: self, metarLoc: .icao, refreshUI: false)
    }
    
    let statusModel = SetStatusModel()
    
    func initialSetup() {
        self.hideKeyboardWhenTappedAround()
        for tf in allTextFields {
            tf.delegate = self
        }
        
        u2StatusOutlet.inputView = PickerTextField<SetStatusModel.U2Status>(hostTextField: u2StatusOutlet)
        t38StatusOutlet.inputView = PickerTextField<SetStatusModel.T38Status>(hostTextField: t38StatusOutlet)
        u2RestrictionsOutlet.inputView = PickerTextField<SetStatusModel.U2Restrictions>(hostTextField: u2RestrictionsOutlet)
        t38RestrictionsOutlet.inputView = PickerTextField<SetStatusModel.T38Restrictions>(hostTextField: t38RestrictionsOutlet)
        u2AlternatesOutlet.inputView = PickerTextField<SetStatusModel.U2Alternates>(hostTextField: u2AlternatesOutlet)
        t38AlternatesOutlet.inputView = PickerTextField<SetStatusModel.T38Alternates>(hostTextField: t38AlternatesOutlet)
        navaidsOutlet.inputView = PickerTextField<SetStatusModel.Navaids>(hostTextField: navaidsOutlet)
        approachLightsOutlet.inputView = PickerTextField<SetStatusModel.ApproachLights>(hostTextField: approachLightsOutlet)
//        localAirfieldsOutlet.inputView = PickerTextField<SetStatusModel.<#here#>>(hostTextField: localAirfieldsOu tlet)
        birdStatusOutlet.inputView = PickerTextField<SetStatusModel.BirdStatus>(hostTextField: birdStatusOutlet)
        fitsOutlet.inputView = PickerTextField<SetStatusModel.Fits>(hostTextField: fitsOutlet)
        activeRunwayOutlet.inputView = PickerTextField<SetStatusModel.ActiveRunway>(hostTextField: activeRunwayOutlet)
        runwayConditionsOutlet.inputView = PickerTextField<SetStatusModel.RunwayCondition>(hostTextField: runwayConditionsOutlet)
//        dateOutlet.inputView = PickerTextField<SetStatusModel.<#here#>>(hostTextField: dateOutlet)
//        timeOutlet.inputView = PickerTextField<SetStatusModel.<#here#>>(hostTextField: timeOutlet)
//        sofOnDutyOutlet.inputView = PickerTextField<SetStatusModel.<#here#>>(hostTextField: sofOnDutyOutlet)
    }
    
    func setFormatting() {
        for label in itemLabels {
            label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            label.textAlignment = .right
        }
        updateStatusButtonOutlet.standardButtonFormatting()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let i = allTextFields.firstIndex(of: textField)
        if textField == allTextFields[i!] {
            if i == allTextFields.count - 1 {
                textField.resignFirstResponder()
                return true
            }
            allTextFields[i! + 1].becomeFirstResponder()}
        return true}
    
    func getRestrictions() -> String {
        var result = ""
        let restricionArray = uds.getListOf(withKey: .listOfRestrictions)
        for r in restricionArray {
            result += r
        }
        return result
    }
    
    func setStatus() {
        let placeHolderText = "UNK"
        print("SetStatus")
        let now = Date()
        let newStatus = CreateSOFStatusInput(
            u2Status: "\(placeHolderText)",
            t38Status: "\(placeHolderText)",
            u2Restrictions: "\(getRestrictions()))",
            t38Restrictions: "\(placeHolderText)",
            u2Alternates: "\(placeHolderText)",
            t38Alternates: "\(placeHolderText))",
            navaids: "\(placeHolderText)",
            approachLights: "\(placeHolderText)",
            localAirfields: "\(placeHolderText)",
            birdStatus: "\(ahas?.first?.ahasRisk ?? placeHolderText)",
            fits: "\(now)",
            activeRunway: "\(now)",
            runwayConditions: "\(now)",
            timeStamp: "\(now)",
            sofOnDuty: "\(aws.username ?? placeHolderText)")
        
        
        
        appSyncClient?.perform(mutation: CreateSofStatusMutation(input: newStatus)){ (result, error) in
            if let error = error as? AWSAppSyncClientError {
                self.log.error("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                self.log.error("Error saving the item on server: \(resultError)")
                return
            }
        }
    }
    
    func getStatus() {
        print("getStatus")
        appSyncClient?.fetch(query: ListSofStatussQuery(), cachePolicy: .fetchIgnoringCacheData) {(result, error) in
            if error != nil {
                self.log.error(error as Any)
                return
            }
            if result != nil {
                self.log.debug(result?.data?.listSofStatuss?.items?.forEach { print($0?.activeRunway as Any)} as Any)
            }
        }
    }
    
    
}


