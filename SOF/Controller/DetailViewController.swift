//
//  DetailViewController.swift
//  BRI Swift
//
//  Created by Matthew Elmore on 6/5/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController, DeviceOrientationDelegate {
    
    func getOrientation(_ orientation: DeviceOrientation) {
        switch orientation {
        case .landscape:
            print("")
//            tempLabelText = "Landscape"
        case .portrait:
            print("")
//            tempLabelText = "Portrait"
        }
        print(orientation)
    }
    
    var u2Status = U2Status()
    var tempLabelText = "" {didSet {print(self.tempLabelText)}}
    
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        detailDescriptionLabel.text = tempLabelText
        let pv = PickerTextField<U2Status.Status>(hostTextField: testItOut)
        testItOut.inputView = pv
        appDelegate.deviceOrientationDelegate = self
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }

    @IBOutlet weak var testItOut: UITextField!
    
    
    

}

