//
//  TrmMsa_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension TrmMsa_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmMsa_CD> {
        return NSFetchRequest<TrmMsa_CD>(entityName: "TrmMsa_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var proc_CD: String?
    @NSManaged public var trmIdent_CD: String?
    @NSManaged public var secNbr_CD: String?
    @NSManaged public var secAlt_CD: String?
    @NSManaged public var icao_CD: String?
    @NSManaged public var navIdent_CD: String?
    @NSManaged public var navType_CD: String?
    @NSManaged public var navCtry_CD: String?
    @NSManaged public var navKeyCd_CD: String?
    @NSManaged public var secBear1_CD: String?
    @NSManaged public var secBear2_CD: String?
    @NSManaged public var wptIdent_CD: String?
    @NSManaged public var wptCtry_CD: String?
    @NSManaged public var secMile1_CD: String?
    @NSManaged public var secMile2_CD: String?
    @NSManaged public var wgsLat_CD: String?
    @NSManaged public var wgsDlat_CD: String?
    @NSManaged public var wgsLong_CD: String?
    @NSManaged public var wgsDlong_CD: String?
    @NSManaged public var cycleDate_CD: String?

}
