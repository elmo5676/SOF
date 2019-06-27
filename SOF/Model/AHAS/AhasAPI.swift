//
//  AhasAPI.swift
//  SOF
//
//  Created by Matthew Elmore on 6/27/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit


struct AhasAPI {
    private static let baseURLString = "http://www.usahas.com/webservices/ahas.asmx/GetAHASRisk?"
    
    static func AhasURL(area: String,
                         month: String,
                         day: String,
                         hour: String,
                         parameters: [String: String]?) -> URL {
        
        
        var components = URLComponents(string: baseURLString)!
        var queryItems = [URLQueryItem]()
        
        let baseParams = [
            "area" : "\"\(area)\"",
            "iMonth" : month,
            "iDay" : day,
            "iHour" : hour
        ]
        for (key, value) in baseParams {
            let item = URLQueryItem(name: key, value: value)
            queryItems.append(item)
        }
        if let additionalParams = parameters {
            for (key, value) in additionalParams {
                let item = URLQueryItem(name: key, value: value)
                queryItems.append(item)
            }}
        components.queryItems = queryItems
        return components.url!
    }
}
