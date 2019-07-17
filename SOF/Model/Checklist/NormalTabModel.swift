//
//  NormalTabModel.swift
//  SOF
//
//  Created by Matthew Elmore on 6/8/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation

enum NormalChecklist: String, CaseIterable {
    case opening = "Opening"
    case changeOver = "ChangeOver"
    case closing = "Closing"
    case changeOgNotify = "Change/OG Notify"
    case u2Status = "U-2 Status"
    case t38Status = "T-38 Status"
    case rq4Status = "RQ-4 Status"
    case fits = "FITS"
    case crosswind = "Crosswind"
    case aqi = "AQI"
    case sofNotes = "SOF Notes"
}

struct NormalTabModel {
    
    var sectionHeaders = ["Normal Ops","Checklists", "Log"]
    
    public enum NormalOps: String, CaseIterable {
        case initialSetup = "Initial Setup"
        case setStatus = "Set Status"
        case lmr = "LMR"
        case phoneNumbers = "Phone Numbers"
    }
    
    
    
    public enum NormalLog: String, CaseIterable {
        case log = "Log"
    }
    
    var normalOps = ["Initial Setup", "Set Status", "LMR", "Phone Numbers"]
    
    var checklists = ["Opening", "Change Over", "Closing", "Change/OG Notify", "U-2 Status", "T-38 Status", "RQ-4 Status", "FITS", "Crosswind", "AQI", "SOF Notes"]
    
    var log = ["Log"]
    
}
