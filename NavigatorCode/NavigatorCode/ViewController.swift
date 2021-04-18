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

    @IBOutlet weak var txtData: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onPressNavigator2(_ sender: UIButton) {
//        data = txtData.text!
        let scr = storyboard?.instantiateViewController(identifier: "NVG2") as! DetailViewController
//        present(scr, animated: true, completion: nil)
        scr.data = txtData.text!
        navigationController?.pushViewController(scr, animated: true)
    }
}
