//
//  NotamFetcher.swift
//  FeatureTests
//
//  Created by John Ayers on 7/15/19.
//  Copyright © 2019 Blacksmith Developers. All rights reserved.
//

import Foundation

typealias NotamList = [String: [String]]

class NotamFetcher {
    var stations: [String] {
        didSet {
            retrieveNotams()
        }
    }
    
    private(set) var notams: NotamList = [:]
    
    private var rawNotamData: [String] = []
    private var rawNotamStation: [String] = []
    
    private var reportKey = "Report"
    private var reportValue = "Report"
    private var actionKey = "actionType"
    private var actionValue = "notamRetrievalByICAOs"
    private var stationKey = "retrieveLocId"
    private(set) var htmlData: String = ""
    private var completionAction: ((NotamList) -> ())?
    
    init(stations: [String], completion: ((NotamList) -> ())?) {
        self.stations = stations.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        self.completionAction = completion
        retrieveNotams()
    }
    
    func retrieveNotams() {
        let url = URL(string: "https://www.notams.faa.gov/dinsQueryWeb/queryRetrievalMapAction.do")!
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let stationData = (stations.reduce("") {$0 + " " + $1 }).trimmingCharacters(in: .whitespacesAndNewlines)
        let postData = "\(reportKey)=\(reportValue)&\(actionKey)=\(actionValue)&\(stationKey)=\(stationData)"
        request.httpBody = postData.data(using: .utf8)
        let session = URLSession(configuration: .ephemeral)
        let task = session.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {
                //We can safely force-unwrap the error because we test for non-nil above
                print("Data not found, error encountered: \(error!)")
                return
            }
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {
                print("Recieved non-200 response, something is ill-formed with the POST request")
                return
            }
            if let responseString = String(data: data, encoding: .utf8) {
                print("Data found, encoding as string")
                self.htmlData = responseString
                self.parseNotams()
            }
        }
        task.resume()
    }
    
    private var numberOfNotams: Int {
        let notamNumberString = "Number of NOTAMs:"
        guard let startIndex = self.htmlData.range(of: notamNumberString) else {
            print("Unable to find count of NOTAMs retrieved; Bad start index")
            return 0
        }
        let endOfReportString = "End of Report"
        guard let endIndex = self.htmlData.range(of: endOfReportString) else {
            print("Unable to find count of NOTAMs retrieved; Bad end index")
            return 0
        }
        
        var parsable = String(self.htmlData[startIndex.upperBound..<endIndex.lowerBound])
        parsable = parsable.replacingOccurrences(of: "&nbsp;", with: "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard let number = Int(parsable) else {
            print ("Unable to parse the number from the text")
            return 0
        }
        return number
    }
    
    private func parseNotams() {
        let totalNotams = numberOfNotams
        //This will wipe the data and allow us to insert into any position without an array error
        rawNotamData = (0..<totalNotams).map { _ in return ""}
        rawNotamStation = (0..<totalNotams).map { _ in return ""}
        let dispatchGroup = DispatchGroup()
        dispatchGroup.enter()
        DispatchQueue.global(qos: .default).async {
            self.fillInRawStations()
            dispatchGroup.leave()
        }
        dispatchGroup.enter()
        DispatchQueue.global(qos: .default).async {
            self.fillInRawNotams()
            dispatchGroup.leave()
        }
        dispatchGroup.wait()
        
        var prevStation = ""
        var notamArray: [String] = []
        notams = [:]
        for i in 0..<rawNotamStation.count {
            if prevStation == "" { prevStation = rawNotamStation[i] }
            if rawNotamStation[i] != prevStation {
                var copyOfNotams: [String] = []
                copyOfNotams.append(contentsOf: notamArray)
                notams[prevStation] = copyOfNotams
                notamArray = []
                prevStation = rawNotamStation[i]
            }
            
            notamArray.append(rawNotamData[i])
        }
        notams[prevStation] = notamArray
        if let completion = completionAction {
            completion(notams)
        }
    }
    
    private func fillInRawNotams() {
        let dataIndexes = htmlData.ranges(of: "<PRE>")
        print("Notams found: \(dataIndexes.count)")
        var count = 0
        for index in dataIndexes {
            let substring = htmlData[index.upperBound...]
            let endString = "</PRE>"
            guard let endIndex = substring.range(of: endString) else {
                print("Unable to find closing tag")
                count += 1
                continue
            }
            let notam = String(substring[index.upperBound..<endIndex.lowerBound])
            rawNotamData[count] = notam
            count += 1
        }
    }
    
    private func fillInRawStations() {
        let stationIndexes = htmlData.ranges(of: "notamSelect")
        print("Stations found: \(stationIndexes.count)")
        var count = 0
        for index in stationIndexes {
            let substring = htmlData[index.upperBound...]
            let idString = "id=\""
            guard let startIndex = substring.range(of: idString) else {
                print("Start pattern did not match")
                count += 1
                continue
            }
            let endString = "\">"
            guard let endIndex = substring.range(of: endString) else {
                print("End pattern did not match")
                count += 1
                continue
            }
            let station = String(substring[startIndex.upperBound..<endIndex.lowerBound])
            rawNotamStation[count] = station
            count += 1
        }
    }
}


