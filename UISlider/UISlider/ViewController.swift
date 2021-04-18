//
//  ViewController.swift
//  UISlider
//
//  Created by MBP0037 on 4/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sldPrice: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sldPrice.maximumValue = 100
        sldPrice.minimumValue = 0
        sldPrice.value = 20
        sldPrice.minimumTrackTintColor = UIColor.black
        sldPrice.maximumTrackTintColor = UIColor.red
        sldPrice.thumbTintColor = UIColor.yellow
        sldPrice.setThumbImage(UIImage(named: "maybay"), for: UIControl.State.normal)
        sldPrice.setThumbImage(UIImage(named: "maybay"), for: UIControl.State.highlighted)
    }
    
    @IBAction func sldValue(_ sender: UISlider) {
        print(sender.value);
    }
    
    
    @IBAction func swhBackground(_ sender: UISwitch) {
        view.backgroundColor = sender.isOn ? UIColor.white : UIColor.black
    }
}

