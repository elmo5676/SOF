//
//  RestrictionsViewController.swift
//  SOF
//
//  Created by Matthew Elmore on 7/3/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit

class RestrictionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inititialFormatting()
        restrictionsTableView.rowHeight = 50
    }
    
    fileprivate func updateStoredData() {
        combinedRestrictions = uds.getListOf(withKey: .listOfRestrictions)
        u2Restrictions = uds.getListOf(withKey: .listOfU2Restrictions)
        t38Restrictions = uds.getListOf(withKey: .listOfT38Restrictions)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateStoredData()
    }
    
    let statusModel = SetStatusModel()
    let u2Rest = SetStatusModel.U2Restrictions.allCases.self
    let t38Rest = SetStatusModel.T38Restrictions.allCases.self
    let combRest = SetStatusModel.CombinedRestrictions.allCases.self
    let uds = UserDefaultSetup()
    var combinedRestrictions: [String] = []
    var u2Restrictions: [String] = []
    var t38Restrictions: [String] = []
    
    @IBOutlet weak var clearAllRestrictionsOutlet: UIButton!
    @IBAction func clearAllRestrictionsButton(_ sender: UIButton) {
        clearAllRestrictionsOutlet.showPressed()
        uds.clearAllListItems(withKey: .listOfRestrictions)
        uds.clearAllListItems(withKey: .listOfU2Restrictions)
        uds.clearAllListItems(withKey: .listOfT38Restrictions)
        updateStoredData()
        restrictionsTableView.reloadData()
    }
    
    
    func inititialFormatting() {
        clearAllRestrictionsOutlet.standardButtonFormatting()
    }
    
    
    
    //TableView
    @IBOutlet weak var restrictionsTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return combRest.count
        case 1:
            return u2Rest.count
        case 2:
            return t38Rest.count
        default:
            return 0
        }
    }
    
    func makeSwitchMatchStoreData(restrictionSwitch: UISwitch, listOfRest: [String], restriction: String) {
        if listOfRest.contains(restriction) {
            restrictionSwitch.isOn = true
        } else {
            restrictionSwitch.isOn = false
        }}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restrictionCell") as! RestrictionsTableViewCell
        switch indexPath.section {
        case 0:
            cell.restrictionLabel.text = combRest[indexPath.row].rawValue
//            makeSwitchMatchStoreData(restrictionSwitch: cell.restrictSwitchOutlet!, listOfRest: combinedRestrictions, restriction: cell.restrictionLabel.text!)
        case 1:
            cell.restrictionLabel.text = u2Rest[indexPath.row].rawValue
//            makeSwitchMatchStoreData(restrictionSwitch: cell.restrictSwitchOutlet!, listOfRest: u2Restrictions, restriction: cell.restrictionLabel.text!)
        case 2:
            cell.restrictionLabel.text = t38Rest[indexPath.row].rawValue
//            makeSwitchMatchStoreData(restrictionSwitch: cell.restrictSwitchOutlet!, listOfRest: t38Restrictions, restriction: cell.restrictionLabel.text!)
        default:
            cell.restrictionLabel.text = "testing"
        }
        
        var allRestrictions: [String] = []
        let combinedRestrictions = uds.getListOf(withKey: .listOfRestrictions)
        let u2Restrictions = uds.getListOf(withKey: .listOfU2Restrictions)
        let t38Restrictions = uds.getListOf(withKey: .listOfU2Restrictions)
        _ = combinedRestrictions.map {allRestrictions.append($0)}
        _ = u2Restrictions.map {allRestrictions.append($0)}
        _ = t38Restrictions.map {allRestrictions.append($0)}
        makeSwitchMatchStoreData(restrictionSwitch: cell.restrictSwitchOutlet, listOfRest: allRestrictions, restriction: cell.restrictionLabel.text!)
        
        return cell
    }
    
    @IBAction func restrictionSwitch(_ sender: UISwitch) {
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Restrictions"
        case 1:
            return "U2 Restrictions"
        case 2:
            return "T38 Restrictions"
        default:
            return "No Soup for YOU!"
        }
    }
    
}
