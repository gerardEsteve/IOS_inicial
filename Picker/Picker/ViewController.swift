//
//  ViewController.swift
//  Picker
//
//  Created by curs on 31/1/19.
//  Copyright © 2019 curs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var textField: UITextField!
    
    let cursos = ["iOS", "Android", "Machine Learning", "Deep Learning", "Security"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
        pickerView.delegate = self
        pickerView.dataSource = self
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
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
        textField.text = cursos[row]
    }
}
