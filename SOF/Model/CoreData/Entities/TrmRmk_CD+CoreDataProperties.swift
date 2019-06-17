//
//  TrmRmk_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension TrmRmk_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmRmk_CD> {
        return NSFetchRequest<TrmRmk_CD>(entityName: "TrmRmk_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var proc_CD: String?
    @NSManaged public var trmIdent_CD: String?
    @NSManaged public var appType_CD: String?
    @NSManaged public var rmkSeq_CD: String?
    @NSManaged public var icao_CD: String?
    @NSManaged public var remarks_CD: String?
    @NSManaged public var cycleDate_CD: String?
    @NSManaged public var rmkType_CD: String?

}
