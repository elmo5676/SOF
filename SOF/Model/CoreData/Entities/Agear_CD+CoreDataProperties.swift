//
//  Agear_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension Agear_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Agear_CD> {
        return NSFetchRequest<Agear_CD>(entityName: "Agear_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var rwyIdent_CD: String?
    @NSManaged public var location_CD: String?
    @NSManaged public var type_CD: String?
    @NSManaged public var cycleDate_CD: String?

}
