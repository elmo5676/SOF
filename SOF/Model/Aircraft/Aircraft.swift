//
//  Aircraft.swift
//  SOF
//
//  Created by Matthew Elmore on 7/17/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import CoreData


protocol Aircraft {
    var appTypeCapable: [TermAppType] { get set }
    var appCategory: [ApproachCategory] { get set }
    var minRunwayLength: Double { get set }
    var maxCrossWind: Double { get set }
    var maxSustainedWind: Double { get set }
}


public enum TermAppType: String {
    
    case APPROACH_TRANSITION = "A"
    case ILS_BACK_COURSE = "B"
    case ILS_CAT_II = "C"
    case VOR_DME_VORTAC_BASED_ON_VORDME_OR_VORTAC = "D"
    case VOR_CIRCLING_APPROACH = "E"
    case NDB_CIRCLING_APPROACH = "F"
    case RNAV = "G"
    case ILS_CAT_III = "H"
    case ILS = "I"
    case LAAS_GPS = "J"
    case WAAS_GPS = "K"
    case ILS_LOCALIZER_ONLY_NO_GS = "L"
    case MLS = "M"
    case NDB = "N"
    case RNAV_GPS_OVERLAY_APPROACH = "O"
    case PAR = "P"
    case NDB_DME = "Q"
    case RNAV_RNP = "R"
    case VOR_BASED_ON_VORDME_OR_VORTAC = "S"
    case TACAN = "T"
    case MLS_CAT_II = "U"
    case VOR_NO_DME = "V"
    case ADF = "W"
    case LDA = "X"
    case SDF = "Y"
    case MLS_CAT_III = "Z"
    case RNAV_GPS_PRECISION_APPROACH_OTHER = "1"
    case ILS_LOCALIZER_ONLY_CIRCLING_APPROACH = "2"
    case ILS_BACK_COURSE_CIRCLING_APPROACH = "3"
}

public enum ApproachCategory {
    case A
    case B
    case C
    case D
    case E
}

struct NewAircraft: Aircraft {
    
    var appTypeCapable: [TermAppType]
    var appCategory: [ApproachCategory]
    var minRunwayLength: Double
    var maxCrossWind: Double
    var maxSustainedWind: Double
    
    init(appTypeCapable: [TermAppType],
         appCategory: [ApproachCategory],
         minRunwayLength: Double,
         maxCrossWind: Double,
         maxSustainedWind: Double) {
        self.appTypeCapable = appTypeCapable
        self.appCategory = appCategory
        self.minRunwayLength = minRunwayLength
        self.maxCrossWind = maxCrossWind
        self.maxSustainedWind = maxSustainedWind
    }
}


