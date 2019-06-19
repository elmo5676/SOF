//
//  CheckInViewController.swift
//  SOF
//
//  Created by Matthew Elmore on 6/19/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit

class CheckInViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
        
        
    @IBOutlet weak var rankTextFieldOutlet: UITextField!
    @IBOutlet weak var lastNameTextFieldOutlet: UITextField!
    @IBOutlet weak var firstNameTextFieldOutlet: UITextField!
    @IBOutlet var textFields: [UITextField]!
    
    
    func initialSetup(){
        
        for textField in textFields {
            textField.delegate = self
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let i = textFields.firstIndex(of: textField)
        if textField == textFields[i!] {
            if i == textFields.count - 1 {
                textField.resignFirstResponder()
                return true
            }
            textFields[i! + 1].becomeFirstResponder()
        }
        return true
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
