//
//  DetailViewController.swift
//  BRI Swift
//
//  Created by Matthew Elmore on 6/5/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit
import AWSAppSync

class DetailViewController: UIViewController {
    
    var appSyncClient: AWSAppSyncClient?
    
    var u2Status = U2Status()

    override func viewDidLoad() {
        super.viewDidLoad()
//        let pv = PickerTextField<U2Status.Status>(hostTextField: testItOut)
//        testItOut.inputView = pv
        appSyncClient = appDelegate.appSyncClient
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setStatus()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }

    @IBOutlet weak var testItOut: UITextField!
    
    
    
    func setStatus() {
        print("SetStatus")
//        let ep = CreateEmergencyInput(id: <#T##GraphQLID?#>, startDate: <#T##Int?#>, startTime: <#T##Int?#>, terminationDate: <#T##Int?#>, terminationTime: <#T##Int?#>, callSign: <#T##String?#>, aircraftType: <#T##String?#>, tailNumber: <#T##String?#>, soulsOnBoard: <#T##String?#>, fuelRemainingTimeInMinutes: <#T##Int?#>, systemAffected: <#T##String?#>, details: <#T##String?#>)
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
//            result?.data?.listSofStatuss?.items?.forEach { print(($0?.testOutThisMf)! + " " + ($0?.activeRunway)? ?? <#default value#> ?? "") }
        }
    }
    

}

