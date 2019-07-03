//
//  UITableView+Extension.swift
//  SOF
//
//  Created by Matthew Elmore on 7/3/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit


extension UITableViewController {
    
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
    
}
