//
//  DetailViewController.swift
//  BRI Swift
//
//  Created by Matthew Elmore on 6/5/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit
import AWSAppSync

class DetailViewController: UIViewController, DeviceOrientationDelegate {
    
    var appSyncClient: AWSAppSyncClient?
    
    func getOrientation(_ orientation: DeviceOrientation) {
        switch orientation {
        case .landscape:
            print("")
//            tempLabelText = "Landscape"
        case .portrait:
            print("")
//            tempLabelText = "Portrait"
        }
        print(orientation)
    }
    
    var u2Status = U2Status()
    var tempLabelText = "" {didSet {print(self.tempLabelText)}}
    
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        detailDescriptionLabel.text = tempLabelText
        let pv = PickerTextField<U2Status.Status>(hostTextField: testItOut)
        testItOut.inputView = pv
        appDelegate.deviceOrientationDelegate = self
        appSyncClient = appDelegate.appSyncClient
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getStatus()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }

    @IBOutlet weak var testItOut: UITextField!
    
    
    
    func setStatus() {
        print("SetStatus")
        let status = CreateSOFStatusInput(id: nil,
                                          u2Status: "Restricted",
                                          t38Status: "Unrestricted",
                                          u2Restrictions: "None",
                                          t38Restrictions: "None",
                                          u2Alternates: "KMHR",
                                          t38Alternates: "KMHR",
                                          navaids: "All In",
                                          approachLights: "All In",
                                          localAirfields: "All In",
                                          birdStatus: "Low",
                                          fits: "Caution",
                                          activeRunway: "31",
                                          runwayConditions: "Dry")
        appSyncClient?.perform(mutation: CreateSofStatusMutation(input: status)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
        }
    }
    
    func getStatus() {
        print("getStatus")
        appSyncClient?.fetch(query: ListSofStatussQuery(), cachePolicy: .returnCacheDataAndFetch){(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            let end = result?.data?.listSofStatuss?.items
            print(end?.count)
            result?.data?.listSofStatuss?.items?.forEach { print(($0?.testOutThisMf)! + " " + ($0?.activeRunway)!) }
        }
    }
    

}

