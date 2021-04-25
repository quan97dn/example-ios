//
//  ViewController.swift
//  DatePicker
//
//  Created by MBP0037 on 4/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func actionDatePicker(_ sender: UIDatePicker) {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "E d D M Y y / H h m s / A a"
        print(formatter.string(from: datePicker.date))
    }
}

