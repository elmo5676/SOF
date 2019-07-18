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



/*
 NAV_TYPE:
 1 - VOR
 2 - VORTAC
 3 - TACAN
 4 - VOR-DME
 5 - NDB
 7 - NDB-DME
 8 - LOCATOR
 9 - DME (EXCLUDING ILS-DME)
 
 Found on : ACOM and HCOM
 Field:     SYM
 R - RADAR CAPABILITY
 V - VHF EMERGENCY FREQUENCY 121.5 MONITORED
 U - UHF EMERGENCY FREQUENCY 243.0 MONITORED
 E - VHF AND UHF EMERGENCY FREQUENCIES MONITORED
 
 HF - 2100-28000 KHz
 VHF - 117.9750-137.0000 MHz
 UHF - 225.0000-399.9000 MHz
 
 
 */

