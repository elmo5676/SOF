//
//  SetStatusViewController.swift
//  SOF
//
//  Created by Matthew Elmore on 6/20/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//


import UIKit
import AWSAppSync

class SetStatusViewController: UIViewController, UITextFieldDelegate {
    
    var appSyncClient: AWSAppSyncClient?
    let log = SwiftyBeaver.self
    let console = ConsoleDestination()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        setFormatting()
        appSyncClient = appDelegate.appSyncClient
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
    
    func setStatus() {
        print("SetStatus")
        let status = CreateSOFStatusInput(u2Status: "\(u2StatusOutlet.text ?? "")",
                                          t38Status: "\(t38StatusOutlet.text ?? "")",
                                          u2Restrictions: "\(u2RestrictionsOutlet.text ?? "")",
                                          t38Restrictions: "\(t38RestrictionsOutlet.text ?? "")",
                                          u2Alternates: "\(u2AlternatesOutlet.text ?? "")",
                                          t38Alternates: "\(t38AlternatesOutlet.text ?? "")",
                                          navaids: "\(navaidsOutlet.text ?? "")",
                                          approachLights: "\(approachLightsOutlet.text ?? "")",
                                          localAirfields: "\(localAirfieldsOutlet.text ?? "")",
                                          birdStatus: "\(birdStatusOutlet.text ?? "")",
                                          fits: "\(fitsOutlet.text ?? "")",
                                          activeRunway: "\(activeRunwayOutlet.text ?? "")",
                                          runwayConditions: "\(runwayConditionsOutlet.text ?? "")",
                                          date: Int(dateOutlet.text ?? "9999.5"),
                                          time: Int(timeOutlet.text ?? "9999.5"),
                                          sofOnDuty: "\(sofOnDutyOutlet.text ?? "")")
        appSyncClient?.perform(mutation: CreateSofStatusMutation(input: status)) { (result, error) in
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
                self.log.error(error)
                return
            }
            if result != nil {
                self.log.debug(result?.data?.listSofStatuss?.items?.forEach { print($0?.activeRunway)})
            }
        }
//        appSyncClient?.fetch(query: ListSofStatussQuery(), cachePolicy: .returnCacheDataAndFetch){(result, error) in
//            if error != nil {
//                print(error?.localizedDescription ?? "")
//                return
//            }
//            print(_ = result?.data?.listSofStatuss?.items)
//            result?.data?.listSofStatuss?.items?.forEach { print($0?.activeRunway)}
//
////            result?.data?.listSofStatuss?.items?.forEach { print(($0?)! + " " + ($0?.activeRunway)? ?? <#default value#> ?? "") }
//        }
    }
    
    
}


