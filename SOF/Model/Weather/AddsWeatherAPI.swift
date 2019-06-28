//
//  AddsWeatherAPI.swift
//  T38
//
//  Created by Matthew Elmore on 4/7/19.
//  Copyright © 2019 elmo. All rights reserved.
//

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

struct AddsWeatherAPI {
    private static let baseURLString = "https://www.aviationweather.gov/adds/dataserver_current/httpparam?"
    private static let apiKey = "___"
    private let dateHandler = DateHandler()
    enum EndPoint {
        case metar
        case taf
    }
    
    //Creates Strings to plug in to the TAF websit for start and end times
    private func getTafStartAndEndTimes(timeIntervalHrs: Int) -> (start: String, end: String) {
        let times = dateHandler.getDateForTaf(nowPlusHours: timeIntervalHrs)
        let df = DateFormatter()
        df.dateFormat = DateSource.reference.rawValue
        let start = "\(Int(times.now!.timeIntervalSince1970.rounded()))"
        let end = "\(Int(times.endTime!.timeIntervalSince1970.rounded()))"
        print(start)
        print(end)
        return (start: start, end: end)
    }
    
    func weatherURL(type: EndPoint,
                           icao: String,
                           parameters: [String: String]?) -> URL {
        
        var components = URLComponents(string: AddsWeatherAPI.baseURLString)!
        var queryItems = [URLQueryItem]()
        var baseParams: [String: String] = [:]
        switch type {
        case .metar:
            baseParams = [
                "dataSource"    : "metars",
                "requestType"   : "retrieve",
                "format"        : "xml",
                "hoursBeforeNow": "2",
                "stationString" : icao
            ]
        case .taf:
            let times = getTafStartAndEndTimes(timeIntervalHrs: 8)
            baseParams = [
                "dataSource"    : "tafs",
                "requestType"   : "retrieve",
                "format"        : "xml",
                "startTime"     : "\(times.start)", //seconds since jan 1, 1970
                "endTime"       : "\(times.end)",
                "stationString" : icao
            ]
        }
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
