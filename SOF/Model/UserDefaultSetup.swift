//
//  UserDefaultSetup.swift
//  SOF
//
//  Created by Matthew Elmore on 6/24/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


struct UserDefaultSetup {
    
    private let defaults = UserDefaults.standard
    
    public enum KeyForDefaults: String {
        case listOfSOF = "listOfSOF"
        case listOfU2LocalFields = "listOfU2LocalFields"
        case listOfT38LocalField = "listOfT38LocalField"
        case normalChecklists = "normalChecklists"
        case emergencyChecklists = "emergencyChecklists"
    }
    
    private var listOfSOF: [String] = [] //["Rank, Last, First, CallSign"]
    private var listOfU2LocalFields: [String] = [] //["ICAO"]
    private var listOfT38LocalField: [String] = [] //["ICAO"]
    private var normalChecklists: [String: [String]] = [:] //["Checklist Name" : ["Step 1","Step 2"]]
    private var emergencyChecklists: [String: [String]] = [:] //["Checklist Name" : ["Step 1","Step 2"]]
    
    func addToList(item: String, withKey: KeyForDefaults) {
        var currentList: [String] = []
        if let cSofs = defaults.object(forKey: withKey.rawValue) {
            currentList = cSofs as! [String]
        }
        currentList.append(item)
        defaults.setValue(currentList, forKey: withKey.rawValue)
    }
    
    func getListOf(withKey: KeyForDefaults) -> [String] {
        var result: [String] = []
        if let listOfSof = defaults.object(forKey: withKey.rawValue) {
            result = listOfSof as! [String]
        }
        return result
    }
    
    func add(checkListName: String, checklistItems: [String], to: KeyForDefaults) {
        var currentChecklists: [String: [String]] = [:]
        if let newChecklist = defaults.object(forKey: to.rawValue) {
            currentChecklists = newChecklist as! [String: [String]]
        }
        currentChecklists[checkListName] = checklistItems
        defaults.set(currentChecklists, forKey: to.rawValue)
    }
    
    func getChecklists() -> (normal: [String: [String]], emergency: [String: [String]]) {
        var normal: [String: [String]] = [:]
        var emergency: [String: [String]] = [:]
        if let normChecklists = defaults.object(forKey: KeyForDefaults.normalChecklists.rawValue) {
            normal = normChecklists as! [String: [String]]
        }
        if let emergencyChecklists = defaults.object(forKey: KeyForDefaults.emergencyChecklists.rawValue) {
            emergency = emergencyChecklists as! [String: [String]]
        }
        return (normal: normal, emergency: emergency)
    }
    
    
    
}
