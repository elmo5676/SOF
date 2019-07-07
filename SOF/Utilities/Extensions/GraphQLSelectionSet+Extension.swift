//
//  GraphQLSelectionSet+Extension.swift
//  SOF
//
//  Created by Matthew Elmore on 7/7/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import AWSAppSync
import AWSMobileClient

extension Array where Element == ListSofStatussQuery.Data.ListSofStatuss.Item? {
    
    func mostRecentStatus() -> ListSofStatussQuery.Data.ListSofStatuss.Item? {
        let selfFiltered = self.filter({$0 != nil})
        let dh = DateHandler()
        let status = selfFiltered.sorted { (first, second) -> Bool in
            let x = dh.getDateFrom(first!.timeStamp, ofType: .swiftStandard)!
            let y = dh.getDateFrom(second!.timeStamp, ofType: .swiftStandard)!
            return (x.compare((y)) == .orderedDescending)
            }.first
        return status!
    }
    
    func allStatusInPrevious(hrs: Int) -> [ListSofStatussQuery.Data.ListSofStatuss.Item?] {
        let selfFiltered = self.filter({$0 != nil})
        let dh = DateHandler()
        let earliest = dh.getDateForTaf(nowPlusHours: -hrs).endTime!
        let listOfStatus = selfFiltered.filter { (self) -> Bool in
              dh.getDateFrom(self?.timeStamp, ofType: .swiftStandard)! >= earliest
        }
        print(listOfStatus.map({$0?.timeStamp}))
        return listOfStatus
    }

    
}

