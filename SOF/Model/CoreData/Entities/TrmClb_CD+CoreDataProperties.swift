//
//  TrmClb_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension TrmClb_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmClb_CD> {
        return NSFetchRequest<TrmClb_CD>(entityName: "TrmClb_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var proc_CD: String?
    @NSManaged public var trmIdent_CD: String?
    @NSManaged public var rwyId_CD: String?
    @NSManaged public var occNo_CD: String?
    @NSManaged public var icao_CD: String?
    @NSManaged public var desig_CD: String?
    @NSManaged public var knots_CD: String?
    @NSManaged public var rateDesc_CD: String?
    @NSManaged public var alt_CD: String?
    @NSManaged public var ftnote_CD: String?
    @NSManaged public var cycleDate_CD: String?

}
