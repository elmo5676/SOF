//
//  NotamDownLoader.swift
//  SOF
//
//  Created by Matthew Elmore on 6/17/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit


protocol NotamDelegate {
    func getCurrentNotams(_ notams: [Notam]?)
}

struct NotamDownLoader {
    var delagate: NotamDelegate?
    
    init(icaos: [String],
         delagate: UIViewController) {
        self.delagate = delagate as? NotamDelegate
        getNotamsFor(icaos: icaos)
    }
    
    init(icaos: [String],
         delegate: UITableViewController){
        self.delagate = delegate as? NotamDelegate
        getNotamsFor(icaos: icaos)
    }
    
    private let session: URLSession = {
        return URLSession(configuration: .default)
    }()
    
    private func getNotamsFor(icaos: [String]) {
        let url = NotamAPI.NotamURL(type: .notams, format: .json, icaos: icaos, parameters: nil)
        print(url)
        let request = URLRequest(url: url)
        let task = self.session.dataTask(with: request) { (data, response, error) -> Void in
            if let data = data {
//                let notams = NotamParser(data: JSONData).notams << Build this
//                let nData = String(data: data, encoding: .utf8)
                print(data)
                DispatchQueue.main.async {
//                    self.delagate?.getCurrentNotams(notams)
                }
            }
            else if let requestError = error {
                print("Error fetching Notams: \(requestError)")
            } else {
                print("Unexpected error with request")
            }
        }
        task.resume()
    }
}

//Add the following to the ViewController calling this:
//Make ViewController Conform to MetarDelegate
//  In viewDidLoad():
//      -- metarStore.delagate = self


//    Instantiating MetarDownLoader will call the getCurrentMetar
//    var metarStore = MetarDownLoader(icao: "KSFO", delagate: self)
//Declare this:
//func getCurrentMetar(_ metar: [Metar]?) {
//    if let metar = metar {
//        guard let altSetting = metar[0].altimeterInHg else {return}
//    }
//}

