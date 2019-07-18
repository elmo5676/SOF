//
//  StringOptional+Extension.swift
//  SOF
//
//  Created by Matthew Elmore on 7/15/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


//118 - 137 MHz - VHF
//225 - 328.6 & 335.4 - 400 MHz - UHF

extension Optional where Wrapped == String {
    
    ///Used on an Optional - Returns the Runway Identifier from TrmMin_CD.trmIdent_CD e.g. 18R or 27L or if not a String then returns ""
    var runwayIdentifier: String {
        let str = self ?? ""
        let start = str.index(str.startIndex, offsetBy: 1)
        let end = str.index(str.startIndex, offsetBy: 4)
        let rwyID = str[start..<end]
        return String(rwyID)
    }
    
    var frequency: String {
        guard var freq = self else {return ""}
        if freq.hasSuffix("M") {
            freq = freq.filter { $0 != "M" }
        }
        return freq
    }
    
    var ilsFrequency: String {
        let freq = self.freqDouble
        return "\(freq/1000)"
    }
    
    var freqDouble: Double {
        guard var freq = self else {return 0.0}
        if freq.hasSuffix("M") {
            freq = freq.filter { $0 != "M" }
        }
        guard let result = Double(freq) else {return 0.0}
        return result
    }
    
    var isVHF: Bool {
        let freq = self.freqDouble
        if freq >= 118 && freq <= 137 {
            return true
        } else {return false}
    }
    
    var isUHF: Bool {
        let freq = self.freqDouble
        if freq >= 225 && freq <= 328.6 {
            return true
        } else {return false}
    }
    
    func removeAllCharOf(_ str: String) -> String? {
        let charR = Character(str)
        var returnCharecters: [Character] = []
        guard let selfStr = self else {return nil}
        for char in selfStr {
            if char != charR {
                returnCharecters.append(char)
            }}
        return String(returnCharecters)
    }
    
}
