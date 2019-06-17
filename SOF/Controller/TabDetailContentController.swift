//
//  TabDetailContentController.swift
//  BRI Swift
//
//  Created by Matthew Elmore on 6/5/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit


struct TabDetailContentController {
    
    var tab: Int
    let other 	= OtherMasterModel()
    let norm 	= NormalTabModel()
    let emer	= EmergencyTabModel()
    
    init(tab: Int) {
        self.tab = tab
    }
    
    func headers() -> [String] {
        var result: [String] = []
        switch tab {
        case 0:
            result = norm.sectionHeaders
        case 1:
            result = emer.sectionHeaders
        case 2:
            result = other.sectionHeaders
        default:
            print("No Tab for you")
        }
        return result
    }
    
    func passContentToDetail(indexPath: IndexPath) -> String {
        var result = ""
        switch tab {
        case 0:
            switch indexPath.section {
            case 0:
                result = norm.normalOps[indexPath.row]
            case 1:
                result = norm.checklists[indexPath.row]
            case 2:
                result = norm.log[indexPath.row]
            default:
                print("what the?!?!")
            }
        case 1:
            switch indexPath.section {
            case 0:
                result = emer.checklists[indexPath.row]
            case 1:
                result = emer.log[indexPath.row]
            default:
                print("what the?!?!")
            }
        case 2:
            print("Other not setup Yet")
        default:
            print("No Tab for you")
        }
        return result
    }
    
    func numerOfRowsIn(section: Int) -> Int {
        var result = 0
        switch tab {
        case 0:
            switch section {
            case 0:
                result = norm.normalOps.count
            case 1:
                result = norm.checklists.count
            case 2:
                result = norm.log.count
            default:
                print("what the?!?!")
            }
        case 1:
            switch section {
            case 0:
                result = emer.checklists.count
            case 1:
                result = emer.log.count
            default:
                print("what the?!?!")
            }
        case 2:
           print("Other not setup Yet")
        default:
            print("No Row for you")
        }
        return result
    }
    
    
    func titleForHeaderIn(section: Int) -> String {
        var result = ""
        switch tab {
        case 0:
            switch section {
            case 0:
                result = norm.sectionHeaders[0]
            case 1:
                result = norm.sectionHeaders[1]
            case 2:
                result = norm.sectionHeaders[2]
            default:
                print("No Header for you")
            }
        case 1:
            switch section {
            case 0:
                result = emer.sectionHeaders[0]
            case 1:
                result = emer.sectionHeaders[1]
            default:
                print("No Header for you")
            }
        case 2:
            print("Other not setup Yet")
        default:
            print("No Header for you")
        }
        return result
    }
    
    func cellForRowAt(indexPath: IndexPath, on: UITableView) -> UITableViewCell {
        let cell = on.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        switch tab {
        case 0:
            switch indexPath.section {
            case 0:
                cell.textLabel?.text = norm.normalOps[indexPath.row]
            case 1:
                cell.textLabel?.text = NormalChecklist.allCases[indexPath.row].rawValue//norm.checklists[indexPath.row]
            case 2:
                cell.textLabel?.text = norm.log[indexPath.row]
            default:
                print("what the?!?!")
            }
        case 1:
            switch indexPath.section {
            case 0:
                cell.textLabel?.text = emer.checklists[indexPath.row]
            case 1:
                cell.textLabel?.text = emer.log[indexPath.row]
            default:
                print("what the?!?!")
            }
        case 2:
            print("Other not setup Yet")
        default:
            print("no Cell for you!")
        }
        return cell
    }
    
    
}
