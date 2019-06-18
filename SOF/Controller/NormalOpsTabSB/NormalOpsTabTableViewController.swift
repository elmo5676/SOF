//
//  NormalOpsTabTableViewController.swift
//  SOF
//
//  Created by Matthew Elmore on 6/18/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit

class NormalOpsTabTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setCellBGColors(nonSelctedCells: [UITableViewCell?], nsBgColor: UIColor, nsTextColor: UIColor, sCell: UITableViewCell?, sBgColor: UIColor, sTextColor: UIColor) {
        for cell in nonSelctedCells {
            cell?.contentView.backgroundColor = nsBgColor
            cell?.textLabel?.textColor = nsTextColor
            cell?.detailTextLabel?.textColor = nsTextColor
        }
        sCell?.contentView.backgroundColor = sBgColor
        sCell?.textLabel?.textColor = sTextColor
        sCell?.detailTextLabel?.textColor = sTextColor
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cells = tableView.visibleCells
        let sCell = tableView.cellForRow(at: indexPath)
        
        setCellBGColors(nonSelctedCells: cells,
                        nsBgColor: #colorLiteral(red: 0.1293983757, green: 0.1294192374, blue: 0.1293912828, alpha: 1),
                        nsTextColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                        sCell: sCell,
                        sBgColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                        sTextColor: #colorLiteral(red: 0.1293983757, green: 0.1294192374, blue: 0.1293912828, alpha: 1))
        
    }



}
