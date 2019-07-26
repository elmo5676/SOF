//
//  NotamHandler.swift
//  SOF
//
//  Created by Matthew Elmore on 7/22/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


struct NotamHandler {
    
    let dh = DateHandler()
    
    private func removeNewLinesAndSpaces(notam: String) -> String {
        return notam.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "\n", with: "")
    }
    
    ///Returns list of All closed runways from an array of notams
    func getAllClosedRunways(notams: [String]) -> Set<String> {
        var runways: [String] = []
        for notam in notams {
            var n = removeNewLinesAndSpaces(notam: notam)
            if let twyStart = n.range(of: "TWY")?.upperBound {
                if let clsdEnd = n.range(of: "CLSD")?.lowerBound{
                    let range = twyStart...clsdEnd
                    n.removeSubrange(range)
                }}
            if let startIndex = n.range(of: "RWY")?.upperBound {
                if let endIndex = n.range(of: "CLSD")?.lowerBound {
                    let closedRunway = n[startIndex..<endIndex]
                    let runway = String(closedRunway).components(separatedBy: "/")
                    for rwy in runway {
                        runways.append(rwy)
                    }}}}
        return Set(runways)
    }
    
//    ///Returns list of closed runways from a line of notams
//    func getClosedRunways(notam: String) -> Set<String> {
//        var runways: [String] = []
//        var n = removeNewLinesAndSpaces(notam: notam)
//        if let twyStart = n.range(of: "TWY")?.upperBound {
//            if let clsdEnd = n.range(of: "CLSD")?.lowerBound{
//                let range = twyStart...clsdEnd
//                n.removeSubrange(range)
//            }}
//        if let startIndex = n.range(of: "RWY")?.upperBound {
//            if let endIndex = n.range(of: "CLSD")?.lowerBound {
//                let closedRunway = n[startIndex..<endIndex]
//                let runway = String(closedRunway).components(separatedBy: "/")
//                for rwy in runway {
//                    runways.append(rwy)
//                }}}
//        return Set(runways)
//    }
    
    func getRVRoutOfServiceForRWYs(notam: String) -> String? {
        let n = removeNewLinesAndSpaces(notam: notam)
        guard let rvrRange = n.range(of: "RVROUTOFSERVICE") else { return nil }
        let startIndex = n.index(rvrRange.lowerBound, offsetBy: -3)
        let endIndex = rvrRange.lowerBound
        return String(n[startIndex..<endIndex])
    }
    
    func getSetOfRVRoutOfServiceForRWYs(notam: String) -> Set<String> {
        var rvr: [String] = []
        let n = removeNewLinesAndSpaces(notam: notam)
        guard let rvrRange = n.range(of: "RVROUTOFSERVICE") else { return Set(rvr) }
        let startIndex = n.index(rvrRange.lowerBound, offsetBy: -3)
        let endIndex = rvrRange.lowerBound
        rvr.append(String(n[startIndex..<endIndex]))
        return Set(rvr)
    }
    
    ///Returns list of closed runways from an array of notams
    func getStartandEndTimes(notam: String) -> (start: String, end: String) {
        var start = ""
        var end = ""
        let n = removeNewLinesAndSpaces(notam: notam)
        if let center = n.range(of: "UNTIL") {
            //Start:
            let sEndIndex = center.lowerBound
            let sStartIndex = n.index(sEndIndex, offsetBy: -14)
            start = String(n[sStartIndex..<sEndIndex])
            let eStartIndex = center.upperBound
            let eEndIndex = n.index(eStartIndex, offsetBy: 14)
            end = String(n[eStartIndex..<eEndIndex])
        }
        return (start: start, end: end)
    }
    
    
    ///Returns Created Date
    func getCreationDate(notam: String) -> Date? {
        let n = removeNewLinesAndSpaces(notam: notam)
        guard let creationRange = n.range(of: "CREATED:") else { return nil }
        let startIndex = n.index(creationRange.upperBound, offsetBy: 0)
        let endIndex = n.endIndex
        let created = String(n[startIndex..<endIndex])
        return dh.getDateFrom(created, ofType: .notam)
    }
    
    
    ///Returns list of closed runways from an array of notams
    func getRXClosedRwysFrom(notam: String) -> Set<String>? {
        let n = removeNewLinesAndSpaces(notam: notam)
        let regex = #"(RWY[0-9A-Z]{3}/[0-9A-Z]{3}CLSD)"#
        if let range = n.range(of: regex, options: .regularExpression, range: nil, locale: nil) {
            let startIndex = n.index(range.lowerBound, offsetBy: 3)
            let endIndex = n.index(range.upperBound, offsetBy: -4)
            return Set(String(n[startIndex..<endIndex]).components(separatedBy: "/"))
        }
        return nil
    }
    
    ///Returns an array of Notam Creation numbers
    func getRXNotamNumber(notam: String) -> Set<String>? {
        let n = removeNewLinesAndSpaces(notam: notam)
        let regex = #"(([A-Z][0-9]{4}/[0-9]{2}))"#
        if let range = n.range(of: regex, options: .regularExpression, range: nil, locale: nil) {
            let startIndex = n.index(range.lowerBound, offsetBy: 0)
            let endIndex = n.index(range.upperBound, offsetBy: 0)
            print(String(n[startIndex..<endIndex]).components(separatedBy: "/"))
            return Set(String(n[startIndex..<endIndex]).components(separatedBy: "/"))
        }
        return nil
    }
    
    ///Returns start end dates for notams
    func getRXStartandEndTimes(notam: String) -> (start: Date?, end: Date?) {
        let n = removeNewLinesAndSpaces(notam: notam)
        let regex = #"(.{13}UNTIL.{13})"#
        if let range = n.range(of: regex, options: .regularExpression, range: nil, locale: nil) {
            let startIndex = n.index(range.lowerBound, offsetBy: 0)
            let endIndex = n.index(range.upperBound, offsetBy: 0)
            let times = (String(n[startIndex..<endIndex]).components(separatedBy: "UNTIL"))
            let start = removeNewLinesAndSpaces(notam: times[0])
            let end = removeNewLinesAndSpaces(notam: times[1])
            return (start: dh.getDateFrom(start, ofType: .notam), end: dh.getDateFrom(end, ofType: .notam))
        }
        return (start: nil, end: nil)
    }
    
    ///Returns RWY ID's for notamed wet RWY
    func getRXWetRwy(notam: String) -> String? {
        let n = removeNewLinesAndSpaces(notam: notam)
        let regexWET = #"(RWY.{1,}FICON.{1,}WET)"#
        let regexRWY = #"(RWY.{1,}FICON)"#
        if let _ = n.range(of: regexWET, options: .regularExpression, range: nil, locale: nil) {
            if let rangeRWY = n.range(of: regexRWY, options: .regularExpression, range: nil, locale: nil) {
                let startIndex = n.index(rangeRWY.lowerBound, offsetBy: 3)
                let endIndex = n.index(rangeRWY.upperBound, offsetBy: -5)
                return String(n[startIndex..<endIndex])
            }}
        return nil
    }
}
