//
//  AddRwy_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension AddRwy_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AddRwy_CD> {
        return NSFetchRequest<AddRwy_CD>(entityName: "AddRwy_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var highIdent_CD: String?
    @NSManaged public var loIdent_CD: String?
    @NSManaged public var icao_CD: String?
    @NSManaged public var heDtLat_CD: String?
    @NSManaged public var heDtDlat_CD: String?
    @NSManaged public var heDtLong_CD: String?
    @NSManaged public var heDtDlong_CD: String?
    @NSManaged public var heOverrunDis_CD: String?
    @NSManaged public var heSurface_CD: String?
    @NSManaged public var heOverrunLat_CD: String?
    @NSManaged public var heOverrunDlat_CD: String?
    @NSManaged public var heOverrunLong_CD: String?
    @NSManaged public var heOverrunDlong_CD: String?
    @NSManaged public var loDtLat_CD: String?
    @NSManaged public var loDtDlat_CD: String?
    @NSManaged public var loDtLong_CD: String?
    @NSManaged public var loDtDlong_CD: String?
    @NSManaged public var loOverrunDis_CD: String?
    @NSManaged public var loSurface_CD: String?
    @NSManaged public var loOverrunLat_CD: String?
    @NSManaged public var loOverrunDlat_CD: String?
    @NSManaged public var loOverrunLong_CD: String?
    @NSManaged public var loOverrunDlong_CD: String?
    @NSManaged public var cycleDate_CD: String?

}
