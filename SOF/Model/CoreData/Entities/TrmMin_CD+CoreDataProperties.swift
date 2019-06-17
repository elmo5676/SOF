//
//  TrmMin_CD+CoreDataProperties.swift
//  SOF
//
//  Created by Matthew Elmore on 6/16/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//
//

import Foundation
import CoreData


extension TrmMin_CD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmMin_CD> {
        return NSFetchRequest<TrmMin_CD>(entityName: "TrmMin_CD")
    }

    @NSManaged public var arptIdent_CD: String?
    @NSManaged public var proc_CD: String?
    @NSManaged public var trmIdent_CD: String?
    @NSManaged public var appType_CD: String?
    @NSManaged public var icao_CD: String?
    @NSManaged public var catADh_CD: String?
    @NSManaged public var catARv_CD: String?
    @NSManaged public var catAHa_CD: String?
    @NSManaged public var catAWxCl_CD: String?
    @NSManaged public var catAWxPv_CD: String?
    @NSManaged public var catBDh_CD: String?
    @NSManaged public var catBRv_CD: String?
    @NSManaged public var catBHa_CD: String?
    @NSManaged public var catBWxCl_CD: String?
    @NSManaged public var catBWxPv_CD: String?
    @NSManaged public var catCDh_CD: String?
    @NSManaged public var catCRv_CD: String?
    @NSManaged public var catCHa_CD: String?
    @NSManaged public var catCWxCl_CD: String?
    @NSManaged public var catCWxPv_CD: String?
    @NSManaged public var catDDh_CD: String?
    @NSManaged public var catDRv_CD: String?
    @NSManaged public var catDHa_CD: String?
    @NSManaged public var catDWxCl_CD: String?
    @NSManaged public var catDWxPv_CD: String?
    @NSManaged public var catEDh_CD: String?
    @NSManaged public var catERv_CD: String?
    @NSManaged public var catEHa_CD: String?
    @NSManaged public var catEWxCl_CD: String?
    @NSManaged public var catEWxPv_CD: String?
    @NSManaged public var minRmk_CD: String?
    @NSManaged public var cycleDate_CD: String?

}
