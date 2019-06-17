//
//  DAFIFDataController.swift
//  unZip
//
//  Created by Matthew Elmore on 5/19/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
///THIS IS ONLY FOR IN APP, THE MAC APP VERSION IS SUBTLY DIFFERENT///

///Added to be called after JSON is downloaded and processed. This is where you put your CoreData handlers
protocol JSONLoaderDelagate {
    func loadJSONafterDownloadedAndProcessed()
//    In the delegate Function:
//    stack.loadJsonIntoCoreData()
}

protocol DafifCoreDataIncrementorDelegate {
    //This is intended to be able to update the UI for progress
    func cduDoneLoading()
}

////Add the following protocols::  JSONLoaderDelagate, JsonCounterDelegate
//func loadJSONafterDownloadedAndProcessed() {
//    stack.loadJsonIntoCoreData()
//}
//
//var jsonCounter: Int = 0
//func jsonIncrementCounter() {
//    jsonCounter += 1
//    print("JSON Items Remaining: \(stack.wantedData.count - jsonCounter)")
//}
//
//var stack = DAFIFCDStack()
//func load() {
//    print("Number of Entities:: \(stack.wantedData.count)")
//    stack.deleteAllCoreData()
//    var dafif = DAFIFDataController(wantedData: stack.wantedData)
//    dafif.jsonLoaderDelegate = self
//    dafif.jsonIncrementorDelegate = self
//    dafif.handleDAFIF()
//}

/**
 DAFIFDataController: Can either be set up for the initial build of an application where it will create all of the CoreData
 and JSON processing files needed to handle the DAFIF or it can be set to process the DAFIF in the app for updates.
 
 Zip Framework:
 - Terminal:
 	- Navigate to folder containing .xcodeproj file
 	- touch Cartfile
 	- github "marmelroy/Zip"
 	- carthage update
 - Finder:
 	- drag and drop Zip framework into xcode: Target > General > Embedded Binaries"
 - Xcode:
 	- Build Phases > + Run Script Phase
 		- /usr/local/bin/carthage copy-frameworks
 		- + Input Files
        - $(SRCROOT)/Carthage/Build/iOS/Zip.framework
 **/
struct DAFIFDataController {
    
    private var wantedData: [FileNames]?
    private var jsonOnly: Bool
    private var coreDataModelName: String
    public var documentsDirectory: URL = { let urls = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask); return (urls.first! as URL)}()
    public var jsonLoaderDelegate: JSONLoaderDelagate?
    public var jsonIncrementorDelegate: JsonCounterDelegate?
    private let fileManager = FileManager.default
    
    //Use the CD Stack Wanted Data Property here to initialize
    init(wantedData: [FileNames]?) {
        self.wantedData = wantedData
        self.jsonOnly = true
        self.coreDataModelName = ""
    }
 
    mutating func handleDAFIF() {
        print(documentsDirectory)
        if let wantedData = self.wantedData {
            _ = DAFIFDownloader(myDocuments: documentsDirectory, wantedData: wantedData, completion: whenDownloadCompleteJSONOnly)
        }}
    
    private func whenDownloadCompleteJSONOnly(wantedData: [FileNames]?) {
        let unZipper = UnzipDAFIF8(wantedData: wantedData, documentsDirectory: documentsDirectory, jsonOnly: jsonOnly)
        unZipper.createFolderStructer()
        unZipper.unZipDAFIF8()
        let listOfFileNames = unZipper.getContentsOf(.dafift, wantedData: wantedData)
        for file in listOfFileNames {
            _ = JSONFromDAFFIF(fileName: file, writeToFile: true, jsonOnly: self.jsonOnly, documentsDirectory: documentsDirectory)
            jsonIncrementorDelegate?.jsonIncrementCounter()
        }
        jsonLoaderDelegate?.loadJSONafterDownloadedAndProcessed()
        cleanUpFolder()
    }
    
    func cleanUpFolder() {
        do {
            try fileManager.removeItem(at: self.documentsDirectory.appendingPathComponent("DAFIF_JSON/SwiftDecoders"))
            try fileManager.removeItem(at: self.documentsDirectory.appendingPathComponent("DAFIF_JSON/CoreDataXml"))
            try fileManager.removeItem(at: self.documentsDirectory.appendingPathComponent("DAFIF_JSON/SwiftCoreDataUtilities"))
        } catch {
            print(error)
        }}
}
