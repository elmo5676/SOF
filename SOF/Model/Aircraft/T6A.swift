//
//  T6A.swift
//  SOF
//
//  Created by Matthew Elmore on 7/18/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


struct T6A: Aircraft {
    
    
    var appTypeCapable: [TermAppType] = [
        .ILS_BACK_COURSE,
        .ILS,
        .ILS_LOCALIZER_ONLY_NO_GS,
        .PAR,
        .RNAV,
        .ILS_LOCALIZER_ONLY_CIRCLING_APPROACH,
        .ILS_BACK_COURSE_CIRCLING_APPROACH,
    ]
    
    var appCategory: [ApproachCategory] = [.B]
    
    var minRunwayLength: Double = 3000
    
  
}
