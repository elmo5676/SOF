//
//  AhasParser.swift
//  SOF
//
//  Created by Matthew Elmore on 6/27/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit


class AhasParser: NSObject, XMLParserDelegate {
    private let ahasKeys = AhasField.allCases.map { $0.rawValue }
    private var results: [[String:String]]?
    private var currentAhas: [String:String]?
    private var currentValue: String?
    var ahas: [Ahas] = []
    
    convenience init(data: Data) {
        self.init()
        let parser = XMLParser(data: data)
        parser.delegate = self
        let success = parser.parse()
        log.info(success)
    }
    
    func parserDidStartDocument(_ parser: XMLParser) {
        results = []
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if ahasKeys.contains(elementName) {
            currentValue = ""
        }}
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        currentValue? += string
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if ahasKeys.contains(elementName) {
            currentAhas![elementName] = currentValue
            currentValue = nil
        }}
    
    func parserDidEndDocument(_ parser: XMLParser) {
        if let resultAhas = results {
            for metar in resultAhas {
                
            
            
            
            }}}
    
}
