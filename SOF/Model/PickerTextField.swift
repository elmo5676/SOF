//
//  GenericPicker.swift
//  MQF Practice
//
//  Created by John Ayers on 6/8/19.
//  Copyright © 2019 Blacksmith Developers. All rights reserved.
//

import UIKit

protocol PickerType: RawRepresentable, Equatable, CustomStringConvertible {
    
}

class PickerTextField<Element: PickerType>: UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate where Element: CaseIterable {
    
    weak var sendingTextField: UITextField! {
        didSet {
            sendingTextField.delegate = self
        }
    }
    
    // Users should provide an array of items that they wish to exclude from the picker
    // Default implementation is to take all items
    public var valuesToExclude: [Element] = []
    
    // This should automatically get all cases of the Enum with the option to exclude items as desired by the user
    private var dataItems: [Element] {
        let items = Element.allCases
        guard let castedItems = items as? [Element] else {
            return []
        }
        return castedItems.filter { !valuesToExclude.contains($0) }
    }
    
    init(hostTextField: UITextField, isModal: Bool = false) {
        self.sendingTextField = hostTextField
        super.init(frame: hostTextField.frame)
        if !isModal {
            frame = calculatedFrame
        }
        buildPicker()
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
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
