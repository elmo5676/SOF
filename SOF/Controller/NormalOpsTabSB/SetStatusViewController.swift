//
//  SetStatusViewController.swift
//  SOF
//
//  Created by Matthew Elmore on 6/20/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

// MARK: - Scrap:
//        self.hideKeyboardWhenTappedAround()
//        for tf in allTextFields {
//            tf.delegate = self
//        }
////        sofOnDutyOutlet.inputView = PickerTextField<SetStatusModel.<#here#>>(hostTextField: sofOnDutyOutlet)


//"SOF: "
//"Status Updated: ",


//"T-38 Status: ",
//"T-38 Retrictions: ",
//"T-38 Alternates: ",


//"U-2 Status: ",
//"U-2 Restrictions: ",
//"U-2 Alternates: ",

//"Airfield Restrictions: ",
//"Active Runway: ",
//"Runway Condition: ",
//"Navaid Status: ",
//"Approach Lights: ",
//"Bird Status: ",
//"FITS: ",

//"Local Airfields: ",






import UIKit
import AWSAppSync
import AWSMobileClient

class SetStatusViewController: UIViewController, UITextFieldDelegate, MetarDelegate, AhasDelegate {
    
    var discard: Cancellable?
    var appSyncClient: AWSAppSyncClient?
    let aws = AWSMobileClient.sharedInstance()
    let log = SwiftyBeaver.self
    let console = ConsoleDestination()
    let uds = UserDefaultSetup()
    let statusModel = SetStatusModel()
    let dh = DateHandler()
    var metarStore: MetarDownLoader?
    var ahasDownloader: AhasDownLoader?
    var ahas: [Ahas]? = []
    var metar: Metar? = nil
    var tafs: [Taf]? = []
    var notams: [Notam]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        initialSetup()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    @IBOutlet var allLabels: [UILabel]!
    
    @IBOutlet weak var navaidsOutlet: UILabel!
    @IBOutlet weak var approachLightsOutlet: UILabel!
    @IBOutlet weak var localAirfieldsOutlet: UILabel!
    @IBOutlet weak var birdStatusOutlet: UILabel!
    @IBOutlet weak var fitsOutlet: UILabel!
    @IBOutlet weak var activeRunwayOutlet: UILabel!
    @IBOutlet weak var runwayConditionsOutlet: UILabel!
    @IBOutlet weak var dateOutlet: UILabel!
    
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var updatedTimeOutlet: UILabel!
    @IBOutlet weak var sofOnDutyOutlet: UILabel!
    
    
    @IBOutlet weak var currentStatusView: UIView!
    @IBOutlet weak var T38StatusView: UIView!
    @IBOutlet weak var t38StatusOutlet: UILabel!
    @IBOutlet weak var t38AlternatesOutlet: UILabel!
    @IBOutlet weak var t38RestrictionsOutlet: UILabel!
    
    @IBOutlet weak var U2StatusView: UIView!
    @IBOutlet weak var u2StatusOutlet: UILabel!
    @IBOutlet weak var u2AlternatesOutlet: UILabel!
    @IBOutlet weak var u2RestrictionsOutlet: UILabel!
    
    
    
    @IBOutlet weak var updatingStatusView: UIView!
    @IBOutlet weak var currentStatusTitelLabel: UILabel!
    
    
    @IBOutlet weak var updateStatusButtonOutlet: UIButton!
    @IBAction func updateStatusButton(_ sender: UIButton) {
        updateStatusButtonOutlet.showPressed()
        setStatus()
    }
    
    func initialSetup() {
        appSyncClient = appDelegate.appSyncClient
        metarStore?.delagate = self
        ahasDownloader?.delegate = self
        setFormatting()
        subscribe()
        getBirdCondition()
        updateWx()
        getStatus()
    }
    
    func setFormatting() {
        updateStatusButtonOutlet.addBlurEffect(style: .extraLight)
        currentStatusView.addBlurEffecttoView(style: .dark, heightRatio: 0.8, widthRatio: 0.8)
        updatingStatusView.addBlurEffecttoView(style: .dark, heightRatio: 0.8, widthRatio: 0.8)
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
    
    
    func getRestrictions(key: UserDefaultSetup.KeyForDefaults) -> String {
        var result = ""
        let restricionArray = uds.getListOf(withKey: key)
        for r in restricionArray {
            result += r
        }
        return result
    }
    
    
    // MARK: - AWS
    let placeHolder = "UNK"
    func setStatus() {
        let now = Date()
        let newStatus = CreateSOFStatusInput(
            u2Status: "\(placeHolder)",
            t38Status: "\(placeHolder)",
            airfieldRestrictions: "\(getRestrictions(key: .listOfAirfieldRestrictions)))",
            u2Restrictions: "\(getRestrictions(key: .listOfU2Restrictions)))",
            t38Restrictions: "\(getRestrictions(key: .listOfT38Restrictions)))",
            u2Alternates: "\(placeHolder)",
            t38Alternates: "\(placeHolder))",
            navaids: "\(placeHolder)",
            approachLights: "\(placeHolder)",
            localAirfields: "\(placeHolder)",
            birdStatus: "\(ahas?.first?.ahasRisk ?? placeHolder)",
            fits: "\(now)",
            activeRunway: "\(now)",
            runwayConditions: "\(now)",
            timeStamp: "\(now)",
            sofOnDuty: "\(aws.username ?? placeHolder)")
        appSyncClient?.perform(mutation: CreateSofStatusMutation(input: newStatus)){ (result, error) in
            if let error = error as? AWSAppSyncClientError {
                self.log.error("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                self.log.error("Error saving the item on server: \(resultError)")
                return
            }}}
    
    func getStatus() {
        appSyncClient?.fetch(query: ListSofStatussQuery(), cachePolicy: .fetchIgnoringCacheData) {(result, error) in
            if error != nil {
                self.log.error(error as Any)
                return
            }
            if result != nil {
                self.initialUpdateStatusBoard(result: result!)
            }}}
    
    func subscribe() {
        do {
            discard = try appSyncClient?.subscribe(subscription: OnCreateSofStatusSubscription(), resultHandler: { (result, transaction, error) in
                if let result = result {
                    print(result)
                    self.updateStatusBoard(result: result)
                } else if let error = error {
                    self.log.error(error.localizedDescription)
                }
            })
        } catch {
            self.log.error("Error starting subscription.")
        }}
    
    
    func initialUpdateStatusBoard(result: GraphQLResult<ListSofStatussQuery.Data>) {
        if let data = result.data {
            if let list = data.listSofStatuss {
                if let items = list.items {
                    let j = items.allStatusInPrevious(hrs: 8)
                    for i in items {
                        print("************************************")
                        print(i?.timeStamp)
                        print("************************************")
                    }
                    if let currentStatus = items.mostRecentStatus() {
                        sofOnDutyOutlet.text = "\(String(describing: currentStatus.sofOnDuty ?? placeHolder))"
                        t38RestrictionsOutlet.text = "\(currentStatus.t38Restrictions ?? placeHolder)"
                        if let updatedTime = dh.dateInDisplayFormat(currentStatus.timeStamp) {
                            updatedTimeOutlet.text = "\(updatedTime)"
                        }
                    }}}}}
    
    func updateStatusBoard(result: GraphQLResult<OnCreateSofStatusSubscription.Data>) {
        if let data = result.data {
            if let status = data.onCreateSofStatus {
                let currentStatus = status
                sofOnDutyOutlet.text = "\(currentStatus.sofOnDuty ?? placeHolder)"
                t38RestrictionsOutlet.text = "\(currentStatus.t38Restrictions ?? placeHolder)"
                updatedTimeOutlet.text = "\(dh.dateInDisplayFormat(currentStatus.timeStamp) ?? placeHolder)"
            }}}
    
    
}


