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
        isSignedIn(aws.isSignedIn)
    }
    
    let aws = AWSMobileClient.sharedInstance()
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var signInOutButtonOutlet: UIButton!
    @IBAction func signInOutButton(_ sender: UIButton) {
        signInOutButtonOutlet.showPressed()
        aws.signOut()
        isSignedIn(aws.isSignedIn)
    }
    
    func isSignedIn(_ yN: Bool) {
        switch yN {
        case true:
            self.title = "Sign Out"
            signInOutButtonOutlet.isEnabled = true
            signInOutButtonOutlet.isHidden = false
        case false:
            self.title = ""
            signInOutButtonOutlet.isEnabled = false
            signInOutButtonOutlet.isHidden = true
        }}
    
    func setFormatting() {
        logo.layer.cornerRadius = 30
        signInOutButtonOutlet.standardButtonFormatting()
        signInOutButtonOutlet.setTitle("Sign Out", for: .normal)
    }
    
    
    @IBAction func dismissButton(_ sender: UIBarButtonItem) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
