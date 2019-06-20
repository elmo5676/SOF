//
//  RankPV.swift
//  SOF
//
//  Created by Matthew Elmore on 6/19/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


struct RankPV {
    
    public enum Rank: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case _2Lt = "2nd Lt."
        case _1Lt = "1st Lt."
        case capt = "Capt."
        case major = "Major"
        case ltCol = "Lt Col."
        case col = "Col."
    }
}
