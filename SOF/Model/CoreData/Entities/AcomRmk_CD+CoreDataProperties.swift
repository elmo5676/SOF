//
//  AcomRmk_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension AcomRmk_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AcomRmk_CD> {
        return NSFetchRequest<AcomRmk_CD>(entityName: "AcomRmk_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var commType_CD: String?
    @NSManaged public var rmkSeq_CD: String?
    @NSManaged public var remark_CD: String?
    @NSManaged public var cycleDate_CD: String?
    @NSManaged public var multi_CD: String?

}
