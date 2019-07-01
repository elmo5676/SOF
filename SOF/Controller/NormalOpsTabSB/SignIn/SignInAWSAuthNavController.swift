//
//  SignInAWSAuthNavController.swift
//  SOF
//
//  Created by Matthew Elmore on 7/1/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit
import AWSMobileClient

class SignInAWSAuthNavController: UINavigationController {
    
    override func viewDidLoad() {
//        self.navigationController?.navigationBar.
        let aws = AWSMobileClient.sharedInstance()
        if aws.isSignedIn {
        } else {
            aws.showSignIn(navigationController: self,
                           signInUIOptions: SignInUIOptions(canCancel: true,
                                                            logoImage: UIImage(named: "login"),
                                                            backgroundColor: .black),
                           hostedUIOptions: nil) { (signInState, error) in
                            if let signInState = signInState {
                                log.debug(signInState)
                            } else {
                                log.debug("error logging in: \(error?.localizedDescription)")
                            }
            }
            
        }
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        log.debug("VIEW DISAPEARED!!!")
    }
    

    
}

