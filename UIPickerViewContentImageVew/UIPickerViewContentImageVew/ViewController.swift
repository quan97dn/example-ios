//
//  ViewController.swift
//  UIPickerViewContentImageVew
//
//  Created by MBP0037 on 4/25/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var arrImage: Array<UIImage> = [UIImage(named: "image1")!, UIImage(named: "image2")!]
    
    
    @IBOutlet weak var imageLoad: UIImageView!
    @IBOutlet weak var categorys: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        categorys.dataSource = self
        categorys.delegate = self
        categorys.selectRow(1, inComponent: 0, animated: true)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // Number column
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // Number row
        return arrImage.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        // Handle content picker
        let img: UIImageView = UIImageView()
        img.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        img.image = arrImage[row]
        img.contentMode = .scaleAspectFill
        return img
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        // Height Item category
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // Event change Item
        imageLoad.image = arrImage[row]
    }
}

