//
//  DateHandler.swift
//  SOF
//
//  Created by Matthew Elmore on 6/28/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation

//Enum for the various DateFormats from the named APIs
enum DateSource: String {
    case metarAndTaf = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
    case tafStartEnd = "yyyy'-'MM'-'dd' 'HH':'mm':'ss' +'Z"
    case ahas = "yyyy'-'MM'-'dd' 'HH':'mm':'ss.sss"
    case reference = "yyyyMMddHHmmss"
    case aws = "yyyy'-'MM'-'dd'T'HH':'mm':'sssss'Z'"
    case swiftStandard = "yyyy'-'MM'-'dd' 'HH':'mm':'ss' 'Z'"
    case stringDisplay = "MMM d, hh:mm"
}

struct DateHandler {
    
    //This translates Dates from various API's into Date()
    func getDateFrom(_ date: String?, ofType: DateSource) -> Date? {
        let df = DateFormatter()
        df.dateFormat = ofType.rawValue
        df.timeZone = TimeZone(abbreviation: "UTC")
        switch ofType {
        case .reference:
            let refDate = "19700101000000"
            return df.date(from: refDate)
        default:
            if let date = date {return df.date(from: date)}
        }
        return nil
    }
    
    func dateInDisplayFormat(_ date: String?) -> String? {
        let df = DateFormatter()
        let displayDf = DateFormatter()
        df.dateFormat = DateSource.swiftStandard.rawValue
        displayDf.dateFormat = DateSource.stringDisplay.rawValue
        df.timeZone = TimeZone(abbreviation: "UTC")
        displayDf.timeZone = TimeZone(abbreviation: "PST")
        if let date = date {
            if let dateUnformatted = df.date(from: date) {
                return displayDf.string(from: dateUnformatted)
            } else { return nil }
        } else { return nil }
    }
    
    //Returns Dates of Now and hours in the future Date
    func getDateForTaf(nowPlusHours: Int) -> (now: Date?, endTime: Date?) {
        let today = Date()
        var calender = Calendar.current
        calender.timeZone = TimeZone(abbreviation: "UTC")!
        let endTime = calender.date(byAdding: .hour, value: nowPlusHours, to: today)
        return (now: today, endTime: endTime)
    }
    

    
}
