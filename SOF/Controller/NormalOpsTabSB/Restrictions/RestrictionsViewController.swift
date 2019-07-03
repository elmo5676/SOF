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
        restrictionsTableView.rowHeight = 50
    }
    
    let statusModel = SetStatusModel()
    let u2Rest = SetStatusModel.U2Restrictions.allCases.self
    let t38Rest = SetStatusModel.T38Restrictions.allCases.self
    let combRest = SetStatusModel.CombinedRestrictions.allCases.self
    
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restrictionCell", for: indexPath) as! RestrictionsTableViewCell
        switch indexPath.section {
        case 0:
            cell.restrictionLabel.text = combRest[indexPath.row].rawValue
            cell.restrictSwitch(cell.restrictSwitchOutlet)
        case 1:
            cell.restrictionLabel.text = u2Rest[indexPath.row].rawValue
        case 2:
            cell.restrictionLabel.text = t38Rest[indexPath.row].rawValue
        default:
            cell.restrictionLabel.text = "testing"
        }
        
        return cell
    }
    
    @IBAction func restrictionSwitch(_ sender: UISwitch) {
        print("not sure how?")
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
    
//    setCellB
    
}
