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
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        setSwitch()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func allRestrictions() -> [String] {
        var result: [String] = []
        let combinedRestrictions = uds.getListOf(withKey: .listOfRestrictions)
        let u2Restrictions = uds.getListOf(withKey: .listOfU2Restrictions)
        let t38Restrictions = uds.getListOf(withKey: .listOfU2Restrictions)
        _ = combinedRestrictions.map {result.append($0)}
        _ = u2Restrictions.map {result.append($0)}
        _ = t38Restrictions.map {result.append($0)}
        log.error(result)
        return result
    }
    
    func setSwitch() {
        
        if let restriction = restrictionLabel.text {
            if allRestrictions().contains(restriction) {
                restrictSwitchOutlet.isOn = true
            } else {
                restrictSwitchOutlet.isOn = false
            }
        }
    }
    
    
    
    @IBOutlet weak var restrictionLabel: UILabel!
    
    @IBOutlet weak var restrictSwitchOutlet: UISwitch!
    @IBAction func restrictSwitch(_ sender: UISwitch) {
        if let restriction = restrictionLabel.text {
            switch sender.isOn {
            case true:
                let listOfRestrictions = uds.addRemoveRestToFromCorrectList(restriction: restriction, add: true)
                log.debug(listOfRestrictions)
            case false:
                let listOfRestrictions = uds.addRemoveRestToFromCorrectList(restriction: restriction, add: false)
                log.debug(listOfRestrictions)
            }
        }
        
    }
    
    

}
