//
//  UserDefaultSetup.swift
//  SOF
//
//  Created by Matthew Elmore on 6/24/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


extension DefaultsKeys {
//    static let <#nameOfDefault#> = DefaultsKey< <#Type#> >("<#StringKey#>")
    static let listOfU2LocalFields = DefaultsKey<[String]>("listOfU2LocalFields")
    static let listOfT38LocalField = DefaultsKey<[String]>("listOfT38LocalField")
    static let normalChecklists = DefaultsKey<[String: [String]]>("normalChecklists")
    static let emergencyChecklists = DefaultsKey<[String: [String]]>("emergencyChecklists")
    static let listOfAirfieldRestrictions = DefaultsKey<[String]>("listOfAirfieldRestrictions")
    static let listOfU2Restrictions = DefaultsKey<[String]>("listOfU2Restrictions")
    static let listOfT38Restrictions = DefaultsKey<[String]>("listOfT38Restrictions")
}

struct UserDefaultSetup {
    
    private let defaults = UserDefaults.standard
    
    public enum KeyForDefaults: String, CaseIterable {
        case listOfSOF = "listOfSOF"
        case listOfU2LocalFields = "listOfU2LocalFields"
        case listOfT38LocalField = "listOfT38LocalField"
        case normalChecklists = "normalChecklists"
        case emergencyChecklists = "emergencyChecklists"
        case listOfAirfieldRestrictions = "listOfRestrictions"
        case listOfU2Restrictions = "listOfU2Restrictions"
        case listOfT38Restrictions = "listOfT38Restrictions"
    }
    
    private var listOfSOF: [String] = [] //["Rank, Last, First, CallSign"]
    private var listOfU2LocalFields: [String] = [] //["ICAO"]
    private var listOfT38LocalField: [String] = [] //["ICAO"]
    private var listOfRestrictions: [String] = [] //["Restriction"]
    private var normalChecklists: [String: [String]] = [:] //["Checklist Name" : ["Step 1","Step 2"]]
    private var emergencyChecklists: [String: [String]] = [:] //["Checklist Name" : ["Step 1","Step 2"]]
    
    
    func addRemoveRestToFromCorrectList(restriction: String, add: Bool) -> [String] {
        var result: [String] = []
        switch restriction {
        case restriction where SetStatusModel.CombinedRestrictions(rawValue: restriction) != nil:
            result = addR(restriction: restriction, add: add, to: .listOfAirfieldRestrictions)
        case restriction where SetStatusModel.U2Restrictions(rawValue: restriction) != nil:
            result = addR(restriction: restriction, add: add, to: .listOfU2Restrictions)
        case restriction where SetStatusModel.T38Restrictions(rawValue: restriction) != nil:
            result = addR(restriction: restriction, add: add, to: .listOfT38Restrictions)
        default:
            log.debug("Huh?!?")
        }
        return result
    }
    
    private func addR(restriction: String, add: Bool, to: KeyForDefaults) -> [String] {
        var result: [String] = []
        if add {
            result = addToList(item: restriction, withKey: to)
        } else {
            result = removeItemList(item: restriction, withKey: to)
        }
        return result
    }
    
    func addToList(item: String, withKey: KeyForDefaults) -> [String] {
        var currentList: [String] = []
        currentList = getListOf(withKey: withKey)
        currentList.append(item)
        defaults.setValue(currentList, forKey: withKey.rawValue)
        return currentList
    }
    
    func clearAllListItems(withKey: KeyForDefaults) {
        let currentList: [String] = []
        defaults.setValue(currentList, forKey: withKey.rawValue)
    }
    
    
    func removeItemList(item: String, withKey: KeyForDefaults) -> [String] {
        var currentList = getListOf(withKey: withKey)
        currentList = currentList.filter { $0 != item }
        defaults.setValue(currentList, forKey: withKey.rawValue)
        return currentList
    }
    
    func add(checkListName: String, checklistItems: [String], to: KeyForDefaults) {
        var currentChecklists: [String: [String]] = [:]
        if let newChecklist = defaults.object(forKey: to.rawValue) {
            currentChecklists = newChecklist as! [String: [String]]
        }
        currentChecklists[checkListName] = checklistItems
        defaults.set(currentChecklists, forKey: to.rawValue)
    }
    
    func getListOf(withKey: KeyForDefaults) -> [String] {
        var result: [String] = []
        if let listOfSof = defaults.object(forKey: withKey.rawValue) {
            result = listOfSof as! [String]
        }
        return result
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
