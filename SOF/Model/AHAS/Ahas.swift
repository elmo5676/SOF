//
//  Ahas.swift
//  SOF
//
//  Created by Matthew Elmore on 6/27/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation

public enum AhasField: String, CaseIterable {
    case route = "Route"
    case segment = "Segment"
    case hour = "Hour"
    case dateTime = "DateTime"
    case nextRadRisk = "NEXRADRISK"
    case soarRisk = "SOARRISK"
    case ahasRisk = "AHASRISK"
    case basedOn = "BasedON"
    case tiDepth = "TIDepth"
    case alt1 = "Alt1"
    case alt2 = "Alt2"
    case alt3 = "Alt3"
    case alt4 = "Alt4"
    case alt5 = "Alt5"
    
    
}

struct Ahas {
    var route: String?
    var segment: String?
    var hour: String? //Z time
    var dateTime: Date?
    var nextRadRisk: String?
    var soarRisk: String?
    var ahasRisk: String?
    var basedOn: String?
    var tiDepth: String? //Height AGL on webPage
    var alt1: String?
    var alt2: String?
    var alt3: String?
    var alt4: String?
    var alt5: String?
    init(route: String?,
         segment: String?,
         hour: String?,
         dateTime: Date?,
         nextRadRisk: String?,
         soarRisk: String?,
         ahasRisk: String?,
         basedOn: String?,
         tiDepth: String?,
         alt1: String?,
         alt2: String?,
         alt3: String?,
         alt4: String?,
         alt5: String?) {
        self.route = route
        self.segment = segment
        self.hour = hour
        self.dateTime = dateTime
        self.nextRadRisk = nextRadRisk
        self.soarRisk = soarRisk
        self.ahasRisk = ahasRisk
        self.basedOn = basedOn
        self.tiDepth = tiDepth
        self.alt1 = alt1
        self.alt2 = alt2
        self.alt3 = alt3
        self.alt4 = alt4
        self.alt5 = alt5
    }
    
    
}
