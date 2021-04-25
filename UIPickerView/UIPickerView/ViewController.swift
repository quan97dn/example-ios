//
//  ViewController.swift
//  UIPickerView
//
//  Created by MBP0037 on 4/25/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerCategory: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerCategory.dataSource = self
        pickerCategory.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "ABC"
    }
}

