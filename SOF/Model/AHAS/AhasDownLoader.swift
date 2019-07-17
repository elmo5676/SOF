//
//  AhasDownLoader.swift
//  SOF
//
//  Created by Matthew Elmore on 6/27/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit

protocol AhasDelegate {
    func hereIsTheBirdCondition(_ ahas: [Ahas])
}

class AhasDownLoader {
    var delegate: AhasDelegate?
    var area: String
    
    init<T: AhasArea>(area: T,
                      delegate: UIViewController,
                      month: String,
                      day: String,
                      hourZ: String,
                      duration: Int) {
        self.delegate = delegate as? AhasDelegate
        self.area = area.rawValue as! String
        getBirdCondition(area: area, month: month, day: day, hourZ: hourZ, duration: nil)
    }
    
    ///Alternate Init
    init(area: String,
         delegate: Alternate,
         month: String,
         day: String,
         hourZ: String) {
        self.delegate = delegate as AhasDelegate
        self.area = area
        getBirdCondition(area: area, month: month, day: day, hourZ: hourZ, duration: nil)
    }
    
    private let session: URLSession = {
        return URLSession(configuration: .default)
    }()
    
    
    private func getBirdCondition<T: AhasArea>(area: T, month: String, day: String, hourZ: String, duration: Int?) {
        let url = AhasAPI.AhasURL(area: area.rawValue as! String, month: month, day: day, hour: hourZ, parameters: nil)
        let request = URLRequest(url: url)
        let task = self.session.dataTask(with: request) { (data, response, error) -> Void in
            if let XMLData = data {
                let birdCondition = AhasParser(data: XMLData).ahas
                DispatchQueue.main.async {
                    self.delegate?.hereIsTheBirdCondition(birdCondition)
                    log.debug(birdCondition)
                }
            } else if let requestError = error {
                log.error("Error fetching metar: \(requestError)")
            } else {
                log.warning("Unexpected error with request")
            }}
        task.resume()
    }
    
    private func getBirdCondition(area: String, month: String, day: String, hourZ: String, duration: Int?) {
        let url = AhasAPI.AhasURL(area: area, month: month, day: day, hour: hourZ, parameters: nil)
        let request = URLRequest(url: url)
        let task = self.session.dataTask(with: request) { (data, response, error) -> Void in
            if let XMLData = data {
                let birdCondition = AhasParser(data: XMLData).ahas
                DispatchQueue.main.async {
                    self.delegate?.hereIsTheBirdCondition(birdCondition)
                }
            } else if let requestError = error {
                log.error("Error fetching metar: \(requestError)")
            } else {
                log.warning("Unexpected error with request")
            }}
        task.resume()
    }
    
    
}
