//
//  Rwy_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension Rwy_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Rwy_CD> {
        return NSFetchRequest<Rwy_CD>(entityName: "Rwy_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var highIdent_CD: String?
    @NSManaged public var lowIdent_CD: String?
    @NSManaged public var highHdg_CD: String?
    @NSManaged public var lowHdg_CD: String?
    @NSManaged public var length_CD: String?
    @NSManaged public var rwyWidth_CD: String?
    @NSManaged public var surface_CD: String?
    @NSManaged public var pcn_CD: String?
    @NSManaged public var heWgsLat_CD: String?
    @NSManaged public var heWgsDlat_CD: String?
    @NSManaged public var heWgsLong_CD: String?
    @NSManaged public var heWgsDlong_CD: String?
    @NSManaged public var heElev_CD: String?
    @NSManaged public var heSlope_CD: String?
    @NSManaged public var heTdze_CD: String?
    @NSManaged public var heDt_CD: String?
    @NSManaged public var heDtElev_CD: String?
    @NSManaged public var hlgtSys1_CD: String?
    @NSManaged public var hlgtSys2_CD: String?
    @NSManaged public var hlgtSys3_CD: String?
    @NSManaged public var hlgtSys4_CD: String?
    @NSManaged public var hlgtSys5_CD: String?
    @NSManaged public var hlgtSys6_CD: String?
    @NSManaged public var hlgtSys7_CD: String?
    @NSManaged public var hlgtSys8_CD: String?
    @NSManaged public var leWgsLat_CD: String?
    @NSManaged public var leWgsDlat_CD: String?
    @NSManaged public var leWgsLong_CD: String?
    @NSManaged public var leWgsDlong_CD: String?
    @NSManaged public var leElev_CD: String?
    @NSManaged public var leSlope_CD: String?
    @NSManaged public var leTdze_CD: String?
    @NSManaged public var leDt_CD: String?
    @NSManaged public var leDtElev_CD: String?
    @NSManaged public var llgtSys1_CD: String?
    @NSManaged public var llgtSys2_CD: String?
    @NSManaged public var llgtSys3_CD: String?
    @NSManaged public var llgtSys4_CD: String?
    @NSManaged public var llgtSys5_CD: String?
    @NSManaged public var llgtSys6_CD: String?
    @NSManaged public var llgtSys7_CD: String?
    @NSManaged public var llgtSys8_CD: String?
    @NSManaged public var heTrueHdg_CD: String?
    @NSManaged public var leTrueHdg_CD: String?
    @NSManaged public var cldRwy_CD: String?
    @NSManaged public var helandDis_CD: String?
    @NSManaged public var heTakeoff_CD: String?
    @NSManaged public var lelandDis_CD: String?
    @NSManaged public var leTakeoff_CD: String?
    @NSManaged public var cycleDate_CD: String?

}
