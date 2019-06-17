//
//  Acom_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension Acom_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Acom_CD> {
        return NSFetchRequest<Acom_CD>(entityName: "Acom_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var commType_CD: String?
    @NSManaged public var commName_CD: String?
    @NSManaged public var sym_CD: String?
    @NSManaged public var freq1_CD: String?
    @NSManaged public var freq2_CD: String?
    @NSManaged public var freq3_CD: String?
    @NSManaged public var freq4_CD: String?
    @NSManaged public var freq5_CD: String?
    @NSManaged public var sec_CD: String?
    @NSManaged public var sOprH_CD: String?
    @NSManaged public var cycleDate_CD: String?
    @NSManaged public var multi_CD: String?
    @NSManaged public var freqMulti_CD: String?
    @NSManaged public var comFreq1_CD: String?
    @NSManaged public var freqUnit1_CD: String?
    @NSManaged public var comFreq2_CD: String?
    @NSManaged public var freqUnit2_CD: String?
    @NSManaged public var comFreq3_CD: String?
    @NSManaged public var freqUnit3_CD: String?
    @NSManaged public var comFreq4_CD: String?
    @NSManaged public var freqUnit4_CD: String?
    @NSManaged public var comFreq5_CD: String?
    @NSManaged public var freqUnit5_CD: String?

}
