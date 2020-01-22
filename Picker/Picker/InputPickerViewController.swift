//
//  InputPickerViewController.swift
//  Picker
//
//  Created by curs on 31/1/19.
//  Copyright © 2019 curs. All rights reserved.
//

import UIKit

class InputPickerViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    var pickerView: UIPickerView!
    
    weak var editingTextField: UITextField?
    
    let cursos = ["iOS", "Android", "Machine Learning", "Deep Learning", "Security"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        textField1.inputView = pickerView
        textField1.delegate = self

        textField2.inputView = pickerView
        textField2.delegate = self
        
        hidableKeyboard()
    }
}

extension InputPickerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cursos[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cursos.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        editingTextField?.text = cursos[row]
    }
}

extension InputPickerViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        pickerView.selectRow(cursos.count/2, inComponent: 0, animated: false)
        editingTextField = textField
        textField.text = cursos[cursos.count/2]
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        editingTextField = nil
    }
}

