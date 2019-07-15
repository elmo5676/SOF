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
    
}
