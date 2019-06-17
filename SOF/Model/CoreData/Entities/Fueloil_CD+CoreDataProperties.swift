//
//  Fueloil_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension Fueloil_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Fueloil_CD> {
        return NSFetchRequest<Fueloil_CD>(entityName: "Fueloil_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var icao_CD: String?
    @NSManaged public var fuel_CD: String?
    @NSManaged public var oil_CD: String?
    @NSManaged public var jasu_CD: String?
    @NSManaged public var supFluids_CD: String?
    @NSManaged public var cycleDate_CD: String?

}
