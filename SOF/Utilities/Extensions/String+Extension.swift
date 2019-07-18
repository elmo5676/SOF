//
//  String+Extension.swift
//  DAFIF_CLI
//
//  Created by Matthew Elmore on 5/4/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


extension String {
    
    public func camelCased(with separator: Character) -> String {
        return self.lowercased()
            .split(separator: separator)
            .enumerated()
            .map { $0.offset > 0 ? $0.element.capitalized : $0.element.lowercased() }
            .joined()
    }
    
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
    
    func lowerCaseFirstLetter() -> String {
        return self.prefix(1).lowercased() + dropFirst()
    }
    
    func removeAllCharOf(_ str: String) -> String {
        let charR = Character(str)
        var returnCharecters: [Character] = []
        for char in self {
            if char != charR {
                returnCharecters.append(char)
            }}
        return String(returnCharecters)
    }
    
    func indices(of occurrence: String) -> [Int] {
        var indices = [Int]()
        var position = startIndex
        while let range = range(of: occurrence, range: position..<endIndex) {
            let i = distance(from: startIndex,
                             to: range.lowerBound)
            indices.append(i)
            let offset = occurrence.distance(from: occurrence.startIndex,
                                             to: occurrence.endIndex) - 1
            guard let after = index(range.lowerBound,
                                    offsetBy: offset,
                                    limitedBy: endIndex) else {
                                        break
            }
            position = index(after: after)
        }
        return indices
    }
    
    func ranges(of searchString: String) -> [Range<String.Index>] {
        let _indices = indices(of: searchString)
        let count = searchString.count
        return _indices.map {
            index(startIndex, offsetBy: $0)..<index(startIndex, offsetBy: $0 + count)
        }
    }
    
    ///Returns the Runway Identifier from TrmMin_CD.trmIdent_CD e.g. 18R or 27L
    var runwayIdentifier: String {
        let start = self.index(self.startIndex, offsetBy: 1)
        let end = self.index(self.startIndex, offsetBy: 4)
        let rwyID = self[start..<end]
        return String(rwyID)
    }
    
    func subString(from: Int, to: Int) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: from)
        let endIndex = self.index(self.startIndex, offsetBy: to)
        return String(self[startIndex...endIndex])
    }
    
    ///Returns an array of ceiling values from the Raw Metar Text. Ceilings: "OVC" "BKN" or "VV"
    func getCeilingFromRawMetar() -> [String] {
        let metarCeiling = ["OVC", "BKN", "VV"]
        var ceilingArray: [String] = []
        for c in metarCeiling {
            if let startI = self.range(of: c)?.upperBound {
                let endI = self.index(startI, offsetBy: 2)
                let ceiling = self[startI...endI]
                ceilingArray.append(String(ceiling))
            }}
        return ceilingArray
    }
    
}
