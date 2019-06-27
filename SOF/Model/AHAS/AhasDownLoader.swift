//
//  AhasDownLoader.swift
//  SOF
//
//  Created by Matthew Elmore on 6/27/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit

protocol AhasDelegate {
    func getBirdCondition(_ ahas: [Ahas])
}

struct AhasDownLoader {
    var delegate: AhasDelegate?
    var area: String
    
    
    
}
