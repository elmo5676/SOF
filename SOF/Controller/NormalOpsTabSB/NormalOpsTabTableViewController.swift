//
//  NormalOpsTabTableViewController.swift
//  SOF
//
//  Created by Matthew Elmore on 6/18/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit
import AWSMobileClient

class NormalOpsTabTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    let aws = AWSMobileClient.sharedInstance()
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cells = tableView.visibleCells
        let sCell = tableView.cellForRow(at: indexPath)
        
        setCellBGColors(nonSelctedCells: cells,
                        nsBgColor: #colorLiteral(red: 0.1293983757, green: 0.1294192374, blue: 0.1293912828, alpha: 1),
                        nsTextColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                        sCell: sCell,
                        sBgColor: #colorLiteral(red: 0.2875531316, green: 0.2876073122, blue: 0.2875460386, alpha: 1),
                        sTextColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        
    }


}
