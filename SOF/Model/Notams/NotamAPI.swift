//
//  NotamAPI.swift
//  SOF
//
//  Created by Matthew Elmore on 6/17/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit


// MARK: - NOTES:
//Main Page: https://www.aviationweather.gov/dataserver
//MainQueryUrl: https://www.aviationweather.gov/adds/dataserver_current/httpparam?
//METARS
//Explination of fields: https://www.aviationweather.gov/dataserver/fields?datatype=metar
//dataSource=metars&requestType=retrieve&format=xml&hoursBeforeNow=2&stationString=\(icao)
//
//TAF
//Explination of fields: https://www.aviationweather.gov/dataserver/fields?datatype=taf
//https://www.aviationweather.gov/adds/dataserver_current/httpparam?
//datasource=tafs&requesttype=retrieve&format=xml&startTime=1553272955&endTime=1553276555&stationString=\(icao)

struct NotamAPI {
    private static let baseURLString = "https://v4p4sz5ijk.execute-api.us-east-1.amazonaws.com/anbdata/states/notams/notams-list?"
    private static let apiKey = "228201c0-90fa-11e9-850f-0b8452f7ba7b"
    enum EndPoint {
        case notams
    }
    enum Format: String {
        case json = "json"
        case csv = "csv"
    }
    
    static func NotamURL(type: EndPoint,
                           format: Format,
                           icaos: [String],
                           parameters: [String: String]?) -> URL {
        
        
        var components = URLComponents(string: baseURLString)!
        var queryItems = [URLQueryItem]()
        var locations: String = ""
        for icao in icaos {
            locations += "\(icao),"
        }
        let baseParams = [
            "format"	: format.rawValue,
            "api_key" 	: apiKey,
            "locations"	: locations,
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
