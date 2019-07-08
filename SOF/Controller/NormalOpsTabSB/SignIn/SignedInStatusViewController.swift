//
//  SignedInStatusViewController.swift
//  SOF
//
//  Created by Matthew Elmore on 7/1/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit
import AWSMobileClient

class SignedInStatusViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setFormatting()
        isSignedIn()
    }
    
    let aws = AWSMobileClient.sharedInstance()
    @IBOutlet weak var logo: UIImageView!
    
    
    func setFormatting() {
        logo.layer.cornerRadius = 50
    }
    
    
    @IBAction func dismissButton(_ sender: UIBarButtonItem) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    func isSignedIn() {
        if aws.isSignedIn {
            presentingViewController?.dismiss(animated: true, completion: nil)
        }}
}
