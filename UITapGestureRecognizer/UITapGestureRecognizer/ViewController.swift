//
//  ViewController.swift
//  UITapGestureRecognizer
//
//  Created by MBP0037 on 4/19/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tapImage: UITapGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        tapImage.numberOfTapsRequired = 1
        tapImage.numberOfTouchesRequired = 1
    }

    @IBAction func tapImagePress(_ sender: UITapGestureRecognizer) {
        print("quan");
    }
    
}

