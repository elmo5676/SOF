//
//  ArrayPicker.swift
//  MQF Practice
//
//  Created by John Ayers on 6/8/19.
//  Copyright © 2019 Blacksmith Developers. All rights reserved.
//

import UIKit

class ArrayPicker<Element: Comparable>: UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate where Element: CustomStringConvertible {
    
    weak var sendingTextField: UITextField! {
        didSet {
            sendingTextField.delegate = self
        }
    }
    
    private var dataItems: [Element]
    
    
    init(hostTextField: UITextField, items: [Element], isModal: Bool = false) {
        self.sendingTextField = hostTextField
        self.dataItems = items
        super.init(frame: hostTextField.frame)
        if !isModal {
            frame = calculatedFrame
        }
        buildPicker()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var calculatedFrame: CGRect {
        let screenFrame = UIScreen.main.bounds
        let height = screenFrame.height / 5
        let width = screenFrame.width
        let point = CGPoint.zero
        let calcFrame = CGRect(origin: point, size: CGSize(width: width, height: height))
        return calcFrame
    }
    
    func buildPicker() {
        dataSource = self
        delegate = self
        sendingTextField.delegate = self
    }
    
    //MARK: - Picker Delegate Methods
    // These methods populate the Picker with the data and functions necessary to display
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataItems.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataItems[row].description
    }
    
    // This function takes the selected item and fills in the field in the textfield
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        guard let textField = sendingTextField else {
            return
        }
        textField.text = dataItems[row].description
        textField.resignFirstResponder()
    }
    
    // This function ensures that the user cannot type any data into the cell; this forces them to use the picker
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return false
    }
    
    
}
