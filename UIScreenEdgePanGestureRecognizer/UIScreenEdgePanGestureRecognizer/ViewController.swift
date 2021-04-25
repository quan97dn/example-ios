//
//  ViewController.swift
//  UIScreenEdgePanGestureRecognizer
//
//  Created by MBP0037 on 4/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewMenu: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewMenu.alpha = 0
    }

    @IBAction func actionScreenEdgePan(_ sender: UIScreenEdgePanGestureRecognizer) {
        UIView.animate(withDuration: 0.5) {
            self.viewMenu.alpha = 1
        }
    }
    
}

