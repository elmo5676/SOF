//
//  UIViewController+Extension.swift
//  CD_01
//
//  Created by Matthew Elmore on 6/14/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit


extension UIViewController {
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
