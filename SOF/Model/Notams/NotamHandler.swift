//
//  NotamHandler.swift
//  SOF
//
//  Created by Matthew Elmore on 7/22/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


struct NotamHandler {
    
    ///Returns list of closed runways from an array of notams
    func getClosedRunways(notams: [String]) -> Set<String> {
        var runways: [String] = []
        for notam in notams {
            let n = notam.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "\n", with: "")
            if let startIndex = n.range(of: "RWY")?.upperBound {
                if let endIndex = n.range(of: "CLSD")?.lowerBound {
                    let closedRunway = n[startIndex..<endIndex]
                    let runway = String(closedRunway).components(separatedBy: "/")
                    for rwy in runway {
                        runways.append(rwy)
                    }}}}
        return Set(runways)
    }
    
    ///Returns list of closed runways from an array of notams
    func getStartandEndTimes(notam: String) -> (start: String, end: String) {
        var start = ""
        var end = ""
        let n = notam.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "\n", with: "")
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
    
    ///This provides compatable approaches based on the Aircraft's Capable approaches and Min runway Length
    func compatableApproachesFilteredByClosedRunways(allRunwayIDs: [String], aircraft: Aircraft, compatableApproaches: [TrmMin_CD], notams: [String]) -> [TrmMin_CD] {
        var result: [TrmMin_CD] = []
        for capableApproach in aircraft.appTypeCapable {
            for approach in compatableApproaches {
                if let approachID = approach.trmIdent_CD {
                    if approachID.hasPrefix(capableApproach.rawValue) {
                        for rwy in getClosedRunways(notams: notams) {
                            if allRunwayIDs.contains(rwy)  {
                                print("Runway: \(rwy) is closed")
                            } else { result.append(approach) }
                        }
                    }
                }}}
        return result
    }
}
