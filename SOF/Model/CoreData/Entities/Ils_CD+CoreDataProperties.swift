//
//  Ils_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension Ils_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ils_CD> {
        return NSFetchRequest<Ils_CD>(entityName: "Ils_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var rwyIdent_CD: String?
    @NSManaged public var compType_CD: String?
    @NSManaged public var colctn_CD: String?
    @NSManaged public var name_CD: String?
    @NSManaged public var freq_CD: String?
    @NSManaged public var chan_CD: String?
    @NSManaged public var gsAngle_CD: String?
    @NSManaged public var lczrGslctn_CD: String?
    @NSManaged public var locMkrlctn_CD: String?
    @NSManaged public var elev_CD: String?
    @NSManaged public var locHdatum_CD: String?
    @NSManaged public var wgsDatum_CD: String?
    @NSManaged public var ilsCat_CD: String?
    @NSManaged public var wgsLat_CD: String?
    @NSManaged public var wgsDlat_CD: String?
    @NSManaged public var wgsLong_CD: String?
    @NSManaged public var wgsDlong_CD: String?
    @NSManaged public var navIdent_CD: String?
    @NSManaged public var navType_CD: String?
    @NSManaged public var navCtry_CD: String?
    @NSManaged public var navKeyCd_CD: String?
    @NSManaged public var magVar_CD: String?
    @NSManaged public var slaveVar_CD: String?
    @NSManaged public var ilsBrg_CD: String?
    @NSManaged public var locWidth_CD: String?
    @NSManaged public var thdCrossingHgt_CD: String?
    @NSManaged public var dmeBias_CD: String?
    @NSManaged public var cycleDate_CD: String?
    @NSManaged public var dmeNP_CD: String?

}
