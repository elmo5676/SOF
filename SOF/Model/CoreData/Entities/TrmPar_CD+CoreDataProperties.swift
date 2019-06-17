//
//  TrmPar_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension TrmPar_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmPar_CD> {
        return NSFetchRequest<TrmPar_CD>(entityName: "TrmPar_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var proc_CD: String?
    @NSManaged public var trmIdent_CD: String?
    @NSManaged public var icao_CD: String?
    @NSManaged public var esAlt_CD: String?
    @NSManaged public var julianDate_CD: String?
    @NSManaged public var amdtNo_CD: String?
    @NSManaged public var opr_CD: String?
    @NSManaged public var hostCtryAuth_CD: String?
    @NSManaged public var cycleDate_CD: String?
    @NSManaged public var altMin_CD: String?
    @NSManaged public var tranAlt_CD: String?
    @NSManaged public var tranLvl_CD: String?
    @NSManaged public var rteTypeQual_CD: String?

}
