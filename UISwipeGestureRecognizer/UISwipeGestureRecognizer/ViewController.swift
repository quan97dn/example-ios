//
//  ViewController.swift
//  UISwipeGestureRecognizer
//
//  Created by MBP0037 on 4/21/21.
//

import UIKit

class ViewController: UIViewController {
    var g: CGFloat = 0;
    @IBOutlet weak var imgLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func swipeLogo(_ sender: UISwipeGestureRecognizer) {
        g += 45
        UIView.animate(withDuration: 0.5) {   self.imgLogo.layer.transform = CATransform3DMakeRotation(CGFloat(M_PI) * self.g / 180, 0, 0, 1)
            
        }
    }
}

