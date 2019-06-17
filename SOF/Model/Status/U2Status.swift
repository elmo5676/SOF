//
//  U2Status.swift
//  SOF
//
//  Created by Matthew Elmore on 6/8/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


struct U2Status {
    
    public enum Status: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case unrestricted   = "Unrestricted"
        case restricted		= "Restricted"
        case stopLaunch		= "Stop Launch"
        case wxHold			= "Weather Hold"
        case wxRecall		= "Weather Recall"
        case terminated		= "Terminated"
    }
    
    
}
