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
//        log.info(success)
    }
    
    func parserDidStartDocument(_ parser: XMLParser) {
        results = []
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if elementName == "NewDataSet" {
            currentAhas = [:]
        } else if ahasKeys.contains(elementName) {
            currentValue = ""
        }
        }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        currentValue? += string
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "NewDataSet" {
            results!.append(currentAhas!)
            currentAhas = nil
        } else if ahasKeys.contains(elementName) {
            currentAhas![elementName] = currentValue
            currentValue = nil
        }
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        if let resultAhas = results {
            for ahas in resultAhas {
                let ahasDateTime = DateHandler().getDateFrom(ahas[AhasField.dateTime.rawValue], ofType: .ahas)
                let bird = Ahas(route: ahas[AhasField.route.rawValue],
                                segment: ahas[AhasField.segment.rawValue],
                                hour: ahas[AhasField.hour.rawValue],
                                dateTime: ahasDateTime,
                                nextRadRisk: ahas[AhasField.nextRadRisk.rawValue],
                                soarRisk: ahas[AhasField.soarRisk.rawValue],
                                ahasRisk: ahas[AhasField.ahasRisk.rawValue],
                                basedOn: ahas[AhasField.basedOn.rawValue],
                                tiDepth: ahas[AhasField.tiDepth.rawValue],
                                alt1: ahas[AhasField.alt1.rawValue],
                                alt2: ahas[AhasField.alt2.rawValue],
                                alt3: ahas[AhasField.alt3.rawValue],
                                alt4: ahas[AhasField.alt4.rawValue],
                                alt5: ahas[AhasField.alt5.rawValue])
                self.ahas.append(bird)
            }}}
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        print(parseError)
        currentValue = nil
        currentAhas = nil
        results = nil
    }
    
}
