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
    var today = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setFormatting()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        initialSetup()
        isSignedIn()
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        updateSunTimes()
        animateSunTimes()
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
    
    @IBOutlet weak var sunTimesView: UIView!
    @IBOutlet weak var sunriseLabel: UILabel!
    @IBOutlet weak var sunSetLabel: UILabel!
    @IBOutlet weak var dayDurationLabel: UILabel!
    @IBOutlet weak var julianDayLabel: UILabel!
    @IBOutlet weak var zuluTime: UILabel!
    @IBOutlet var sunTimesLabels: [UILabel]!
    
    
    @IBOutlet weak var currentStatusView: UIView!
    @IBOutlet weak var t38StatusView: UIView!
    @IBOutlet weak var t38StatusOutlet: UILabel!
    @IBOutlet weak var t38AlternatesOutlet: UILabel!
    @IBOutlet weak var t38RestrictionsOutlet: UILabel!
    
    @IBOutlet weak var U2StatusView: UIView!
    @IBOutlet weak var u2StatusOutlet: UILabel!
    @IBOutlet weak var u2AlternatesOutlet: UILabel!
    @IBOutlet weak var u2RestrictionsOutlet: UILabel!
    
    
    
    @IBOutlet weak var updatingStatusView: UIView!
    @IBOutlet weak var currentStatusTitelLabel: UILabel!
    
    @IBOutlet weak var sofSignedIn: UILabel!
    @IBOutlet weak var SignedInButtonOutlet: UIButton!
    @IBAction func signInOutButton(_ sender: UIButton) {
        if aws.isSignedIn {
            aws.signOut()
        } else {
            performSegue(withIdentifier: "signIn", sender: sender)
        }
        isSignedIn()
    }
    
    @IBOutlet weak var updateStatusButtonOutlet: UIButton!
    @IBAction func updateStatusButton(_ sender: UIButton) {
        updateStatusButtonOutlet.showPressed()
        setStatus()
    }
    
    func initialSetup() {
        appSyncClient = appDelegate.appSyncClient
        metarStore?.delagate = self
        ahasDownloader?.delegate = self
        subscribe()
        getBirdCondition()
        updateWx()
        getStatus()
        // TODO: add option to get ipad position
    }
    
    
    
    func animateSunTimes() {
        self.updateSunTimes1()
        UIView.animateKeyframes(withDuration: 3.0,
                                delay: 0,
                                options: [.autoreverse, .repeat, .allowUserInteraction],
                                animations: {animateAlert()})
        
        func animateAlert() {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.updateSunTimes2()
            }
//            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5) {
//                self.updateSunTimes2()
//            }
        }
    }
    
    
    
    
    func updateSunTimes1() {
        let sun = TimeCalculations(latitude: 39.14, longitude: -121.44, date: today, timeZone: TimeZone(abbreviation: "PST")!)
        let start : CGPoint = CGPoint(x: 0.0, y: 0.0)
        let end : CGPoint = CGPoint(x: 1.0, y: 1.0)
        let colors: [CGColor] = [#colorLiteral(red: 0.6075459719, green: 0, blue: 0, alpha: 1),#colorLiteral(red: 0, green: 0.02883746661, blue: 0.5216178298, alpha: 1)]
        
        let gradientStart: [NSNumber] = [0.0,0.5,1.0]
        
        let gradient: CAGradientLayer = makeGradientLayer(for: sunTimesView, startPoint: start, endPoint: end, gradientLocations: nil, gradientColors: colors)
        self.sunTimesView.layer.masksToBounds = true
        self.sunTimesView.layer.insertSublayer(gradient, at: 0)
        sunriseLabel.text = "\(sun.sunTimes().sunrise)"
        sunSetLabel.text = "\(sun.sunTimes().sunset)"
        julianDayLabel.text = "\(sun.julianDay())"
        dayDurationLabel.text = "\(sun.sunTimes().durationFormatted)"
        for sunLabel in sunTimesLabels {
            sunLabel.adjustsFontSizeToFitWidth = true
        }
    }
    
    func updateSunTimes2() {
        let sun = TimeCalculations(latitude: 39.14, longitude: -121.44, date: today, timeZone: TimeZone(abbreviation: "PST")!)
        let start : CGPoint = CGPoint(x: 0.0, y: 1.0)
        let end : CGPoint = CGPoint(x: 1.0, y: 1.0)
        let colors: [CGColor] = [#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1),#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1),#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)]
        
//        let gradientStart: [NSNumber] = [0.0,0.0,1.0]
        let gradientEnd: [NSNumber] = [0.0,1.0,1.0]
        
        let gradient: CAGradientLayer = makeGradientLayer(for: sunTimesView, startPoint: start, endPoint: end, gradientLocations: nil, gradientColors: colors)
        self.sunTimesView.layer.masksToBounds = true
        self.sunTimesView.layer.insertSublayer(gradient, at: 0)
        sunriseLabel.text = "\(sun.sunTimes().sunrise)"
        sunSetLabel.text = "\(sun.sunTimes().sunset)"
        julianDayLabel.text = "\(sun.julianDay())"
        dayDurationLabel.text = "\(sun.sunTimes().durationFormatted)"
        for sunLabel in sunTimesLabels {
            sunLabel.adjustsFontSizeToFitWidth = true
        }
    }
    
    
    func isSignedIn() {
        switch aws.isSignedIn {
        case true:
            SignedInButtonOutlet.backgroundColor = #colorLiteral(red: 0.0643774569, green: 0.5319937468, blue: 0.05632310361, alpha: 1)
            SignedInButtonOutlet.setTitle("Log Out", for: .normal)
            sofSignedIn.isHidden = false
            let sof = aws.username ?? ""
            sofSignedIn.text = "SOF: \(sof)"
            sofSignedIn.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            updateStatusButtonOutlet.isEnabled = true
            updateStatusButtonOutlet.isHidden = false
        case false:
            SignedInButtonOutlet.backgroundColor = #colorLiteral(red: 0.8894673586, green: 0.05032693595, blue: 0.03813567758, alpha: 1)
            SignedInButtonOutlet.setTitle("Log In", for: .normal)
            sofSignedIn.isHidden = true
            sofSignedIn.text = " "
            updateStatusButtonOutlet.isEnabled = false
            updateStatusButtonOutlet.isHidden = true
        }
        sofSignedIn.adjustsFontSizeToFitWidth = true
    }
    
    func setFormatting() {
        SignedInButtonOutlet.layer.cornerRadius = 12
        sofSignedIn.layer.cornerRadius = 5
        updateStatusButtonOutlet.addBlurEffect(style: .extraLight)
        let borderColor: CGColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        let borderWidth: CGFloat = 0.5
        let cornerRadius: CGFloat = 10
        sunTimesView.layer.borderWidth = borderWidth
        sunTimesView.layer.borderColor = borderColor
        sunTimesView.layer.cornerRadius = cornerRadius
        t38StatusView.layer.borderWidth = borderWidth
        t38StatusView.layer.borderColor = borderColor
        currentStatusView.layer.borderColor = borderColor
        updatingStatusView.layer.borderColor = borderColor
        currentStatusView.layer.borderWidth = borderWidth
        updatingStatusView.layer.borderWidth = borderWidth
        currentStatusView.layer.cornerRadius = cornerRadius
        updatingStatusView.layer.cornerRadius = cornerRadius
        currentStatusView.layer.masksToBounds = true
    }
    
    
    // MARK: - Bird Condition
    func hereIsTheBirdCondition(_ ahas: [Ahas]) {
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
    func hereIsTheMetar(_ metar: [Metar]?, metarLoc: MetarLoc, refreshUI: Bool) {
    }
    
    func updateWx(){
        metarStore = MetarDownLoader(icao: "KBAB", delagate: self, metarLoc: .icao, refreshUI: false)
    }
    
    
    // MARK: - AWS
    let placeHolder = "UNK"
    func setStatus() {
        let now = Date()
        let newStatus = CreateSOFStatusInput(
            u2Status: "\(placeHolder)",
            t38Status: "\(placeHolder)",
            airfieldRestrictions: uds.getListOf(withKey: .listOfAirfieldRestrictions),
            u2Restrictions: uds.getListOf(withKey: .listOfU2Restrictions),
            t38Restrictions: uds.getListOf(withKey: .listOfT38Restrictions),
            u2Alternates: ["\(placeHolder)"],
            t38Alternates: ["\(placeHolder)"],
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
        let query = ListSofStatussQuery(limit: 10_000)
        appSyncClient?.fetch(query: query, cachePolicy: .fetchIgnoringCacheData) {(result, error) in
            if error != nil {
//                self.log.error(error as Any)
                return
            }
            if result != nil {
                guard let data = result?.data else {self.log.error("No Status Data"); return}
                guard let list = data.listSofStatuss else {self.log.error("No Status List"); return}
                guard let items = list.items else {self.log.error("No Status Items"); return}
                self.log.info(items.count)
                guard let currentStatus = items.mostRecentStatus() else {self.log.error("No Status Current Status"); return}
                
                let t38Restrictions = self.arrayToString(currentStatus.t38Restrictions) ?? " "
                self.sofOnDutyOutlet.text = "\(currentStatus.sofOnDuty ?? self.placeHolder)"
                self.t38RestrictionsOutlet.text = "\(t38Restrictions)"
                if let updatedTime = self.dh.dateInDisplayFormat(currentStatus.timeStamp) {
                    self.updatedTimeOutlet.text = "\(updatedTime)"
                }
            }}}
    
    func subscribe() {
        do {
            discard = try appSyncClient?.subscribe(subscription: OnCreateSofStatusSubscription(), resultHandler: { (result, transaction, error) in
                if let result = result {
                    print(result)
                    self.updateStatusBoard(result: result)
                } else if let error = error {
//                    self.log.error(error.localizedDescription)
                }
            })
        } catch {
            self.log.error("Error starting subscription.")
        }}
    
    func arrayToString(_ ar: [String?]?) -> String? {
        guard let strArray = ar else { return nil }
        var result = ""
        for str in strArray {
            guard let str = str else { return nil}
            result += "| \(str) |"
        }
        return result
    }
    
    func initialUpdateStatusBoard(result: GraphQLResult<ListSofStatussQuery.Data>) {
        if let data = result.data {
            if let list = data.listSofStatuss {
                if let items = list.items {
                    if let currentStatus = items.mostRecentStatus() {
                        let t38Restrictions = arrayToString(currentStatus.t38Restrictions) ?? " "
                        sofOnDutyOutlet.text = "\(String(describing: currentStatus.sofOnDuty ?? placeHolder))"
                        t38RestrictionsOutlet.text = "\(t38Restrictions)"
                        if let updatedTime = dh.dateInDisplayFormat(currentStatus.timeStamp) {
                            updatedTimeOutlet.text = "\(updatedTime)"
                        }
                    }}}}}
    
    func updateStatusBoard(result: GraphQLResult<OnCreateSofStatusSubscription.Data>) {
        if let data = result.data {
            if let status = data.onCreateSofStatus {
                let currentStatus = status
                let t38Restrictions = arrayToString(currentStatus.t38Restrictions) ?? " "
                sofOnDutyOutlet.text = "\(currentStatus.sofOnDuty ?? placeHolder)"
                t38RestrictionsOutlet.text = "\(t38Restrictions)"
                updatedTimeOutlet.text = "\(dh.dateInDisplayFormat(currentStatus.timeStamp) ?? placeHolder)"
            }}}
    
    
}


