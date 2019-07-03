//
//  RestrictionsTableViewCell.swift
//  SOF
//
//  Created by Matthew Elmore on 7/3/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit

class RestrictionsTableViewCell: UITableViewCell {
    
    let uds = UserDefaultSetup()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBOutlet weak var restrictionLabel: UILabel!
    
    @IBOutlet weak var restrictSwitchOutlet: UISwitch!
    @IBAction func restrictSwitch(_ sender: UISwitch) {
        if let restriction = restrictionLabel.text {
            switch sender.isOn {
            case true:
                let listOfRestrictions = uds.addToList(item: restriction, withKey: .listOfRestrictions)
                log.debug(listOfRestrictions)
            case false:
                let listOfRestrictions = uds.removeItemList(item: restriction, withKey: .listOfRestrictions)
                log.debug(listOfRestrictions)
            }
        }
        
    }
    
    

}
