//
//  NotamHandler.swift
//  SOF
//
//  Created by Matthew Elmore on 7/22/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


struct NotamHandler {
    
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
    
    ///Returns list of closed runways from a line of notams
    func getClosedRunways(notam: String) -> Set<String> {
        var runways: [String] = []
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
                }}}
        return Set(runways)
    }
    
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
    
    ///Returns Creation Date String for a line of Notams
    func getCreationDate(notam: String) -> String {
        let n = removeNewLinesAndSpaces(notam: notam)
        guard let creationRange = n.range(of: "CREATED:") else { return "" }
        let startIndex = n.index(creationRange.upperBound, offsetBy: 0)
        let endIndex = n.endIndex
        return String(n[startIndex..<endIndex])
    }
    
}
