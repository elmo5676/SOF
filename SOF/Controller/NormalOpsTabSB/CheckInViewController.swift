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
        initialSetup()
    }
        
        
    @IBOutlet weak var rankTextFieldOutlet: UITextField!
    @IBOutlet weak var lastNameTextFieldOutlet: UITextField!
    @IBOutlet weak var firstNameTextFieldOutlet: UITextField!
    @IBOutlet var textFields: [UITextField]!
    @IBOutlet weak var sofView: UIView!
    @IBOutlet weak var sofViewBlur: UIVisualEffectView!
    
    
    func initialSetup(){
        setFormatting()
        let pv = PickerTextField<RankPV.Rank>(hostTextField: rankTextFieldOutlet)
        rankTextFieldOutlet.inputView = pv
        for textField in textFields {
            textField.delegate = self
        }
    }
    
    func setFormatting(){
        let bgColor: CGColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        let bdColor: CGColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let bdWidth: CGFloat = 1
        let cornerRadius: CGFloat = 10
//        sofView.layer.backgroundColor = bgColor
        sofView.layer.borderColor = bdColor
        sofView.layer.borderWidth = bdWidth
        sofView.layer.cornerRadius = cornerRadius
        sofViewBlur.layer.cornerRadius = cornerRadius
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
