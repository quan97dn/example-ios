//
//  ViewController.swift
//  UILongPressGestureRecognizer
//
//  Created by MBP0037 on 4/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageK: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func actionLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began
        {
            imageK.frame.size = CGSize(width: 300, height: 300)
        }
    }
}

