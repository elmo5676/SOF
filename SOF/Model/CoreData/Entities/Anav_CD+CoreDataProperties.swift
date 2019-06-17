//
//  Anav_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension Anav_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Anav_CD> {
        return NSFetchRequest<Anav_CD>(entityName: "Anav_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var navIdent_CD: String?
    @NSManaged public var navType_CD: String?
    @NSManaged public var navCtry_CD: String?
    @NSManaged public var navKeyCd_CD: String?
    @NSManaged public var name_CD: String?
    @NSManaged public var atFld_CD: String?
    @NSManaged public var bearing_CD: String?
    @NSManaged public var distance_CD: String?
    @NSManaged public var cycleDate_CD: String?

}
