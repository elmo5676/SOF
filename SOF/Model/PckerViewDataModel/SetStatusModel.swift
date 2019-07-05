//
//  SetStatusModel.swift
//  SOF
//
//  Created by Matthew Elmore on 6/20/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation

struct SetStatusModel {
    
    public enum U2Status: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case unrestricted = "Unrestricted"
        case restricted = "Restricted"
        case stopLaunch = "Stop Launch"
        case wxHold = "Weather Hold"
        case wxRecall = "Weather Recall"
        case terminated = "Terminated"
    }
    
    public enum T38Status: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case unrestricted = "Unrestricted"
        case restricted = "Restricted"
        case stopLaunch = "Stop Launch"
        case wxHold = "Weather Hold"
        case wxRecall = "Weather Recall"
        case terminated = "Terminated"
    }
    
    public enum CombinedRestrictions: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case xwG_10 = "XW > 10 Knots"
        case xwG_12 = "XW > 12 Knots"
        case xwG_15 = "XW > 15 Knots"
        case windG_30 = "Wind > 30 Knots"
        case fitsCaution = "FITS Caution"
        case fitsDanger = "FITS Danger"
        case rvrLessT_2400 = "RVR < 2400"
        case rvrLessT_1600 = "RVR < 1600"
        case turbulance = "Turbulence"
        case thunderstorms = "Thunderstorms"
        case wxLessT_20003 = "WX < 2000/3"
        case fog = "Fog"
        case birdModerate = "Bird Moderate"
        case u2PracticeAreaActive = "U-2 Practice Area Active"
    }
    
    public enum U2Restrictions: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case highSortiesOnly = "High Sorties Only"
        case lowSortiesOnly = "Low Sorties Only"
        case noTouchAndGos = "No U2 Touch & Go's"
        case noAlternateAvailable = "No U2 Alternates Available"
        case vfrPatternClosed = "U2 VFR Pattern Closed"
        case alternateRequired = "U2 Alternate Required"
        case wxLessT_ApproachMins = "WX < U2 Approach Mins"
        case radarPatternOnly = "U2 Radar Pattern Only"
    }
    
    public enum T38Restrictions: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        
        case noTouchAndGos = "No T38 Touch & Go's"
        case noAlternateAvailable = "No T38 Alternates Available"
        case vfrPatternClosed = "T38 VFR Pattern Closed"
        case alternateRequired = "T38 Alternate Required"
        case wxLessT_ApproachMins = "WX < T38 Approach Mins"
        case radarPatternOnly = "T38 Radar Pattern Only"
        case mhrBirdModerate = "MHR Bird Moderate"
        case mhrBirdSevere = "MHR Bird Severe"
    }
    
    public enum U2Alternates: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case mather = "Mather KMHR [200 Gallons]"
        case travis = "Travis KSUU [220 Gallons]"
        case palmdale = "Palmdale KPMD [415 Gallons]"
        case klamath = "Klamath K??? [325 Gallons]"
        case Fallon = "Fallon K??? [295 Gallons]"
        case chico = "Chico K??? [215 Gallons]"
        case reno = "Reno K??? [260 Gallons]"
        case lemoore = "Lemoore K??? [330 Gallons]"
        
    }
    
    public enum T38Alternates: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        case mather = "Mather - 1200 lbs"
        case travis = "Travis - 1300 lbs"
        case sacramento = "SMF - 1100 lbs"
        case reno = "Reno - 1400 lbs"
        case fallon = "Fallon - 1700 lbs"
        case chico = "Chico - 1200 lbs"
        case fallon_15 = "Fallon 15K - 1700 lbs"
        case redding = "Redding 5K - 1500 lbs"
        case fresno_15 = "Fresno 15K - 1900 lbs"
        case fresno = "Fresno 5K - 2100 lbs"
        case lemoore_15 = "Lemoore 15K - 2000 lbs"
        case lemoore = "Leemore 5K - 2200 lbs"
        case mather_5k = "Mather 5K - 1300 lbs"
        
    }
    
    public enum Navaids: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case allIn = "All In"
        case vortacOTS = "VORTAC OTS"
        case dmeOTS = "DME OTS"
        case tacanOTS = "TACAN OTS"
        case rwy15ILSOTS = "RWY 15 ILS OTS"
        case rwy3ILSOTS = "RWY 33 ILS OTS"
        case rwy15GSOTS = "RWY 15 GS OTS"
        case rwy33GLSOTS = "RWY 33 GS OTS"
        
    }
    
    public enum ApproachLights: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case allIn = "All In"
        case rwy15PapiOts = "RWY 15 PAPI OTS"
        case rwy33PapiOts = "RWY 33 PAPI OTS"
        case rwy15AppLightsOts = "RWY 15 Approach Lights OTS"
        case rwy33AppLightsOts = "RWY 33 Approach Lights OTS"
        case rwy15SegFlashingLightsOts = "RWY 15 Seq Flashers OTS"
        case rwy33SegFlashingLightsOts = "RWY 33 Seq Flashers OTS"
        case rwy15ThresholdLightsOts = "RWY 15 Threshold Lights OTS"
        case rwy33ThresholdLightsOts = "RWY 33 Threshold Lights OTS"
        
    }
    
    public enum BirdStatus: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case low = "Bird Low"
        case moderate = "Bird Moderate"
        case severe = "Bird Severe"
        
    }
    
    public enum Fits: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case normal = "Normal"
        case caution = "Caution"
        case danger = "Danger"
    }
    
    public enum ActiveRunway: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case _15 = "15"
        case _33 = "33"
    }
    
    public enum RunwayCondition: String, PickerType, CaseIterable {
        public var description: String { return self.rawValue}
        
        case dry = "Dry"
        case wet = "Wet"
        case icy = "Icy"
    }
    
//    public enum <#here#>: String, PickerType, CaseIterable {
//        public var description: String { return self.rawValue}
//
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//    }

    
}
