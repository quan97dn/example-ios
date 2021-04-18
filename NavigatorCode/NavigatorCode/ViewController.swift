//
//  ViewController.swift
//  NavigatorCode
//
//  Created by MBP0037 on 4/18/21.
//

import UIKit

// Using variable global set value to NVG 2
//var data: String = ""

class ViewController: UIViewController {

    // userDefault is SharedPreferences android
    let userDefault: UserDefaults = UserDefaults()
    
    @IBOutlet weak var txtData: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onPressNavigator2(_ sender: UIButton) {
//        data = txtData.text!
        let scr = storyboard?.instantiateViewController(identifier: "NVG2") as! DetailViewController
//        present(scr, animated: true, completion: nil)
//        scr.data = txtData.text!
        userDefault.set(txtData.text!, forKey: "data")
        navigationController?.pushViewController(scr, animated: true)
    }
}
