//
//  ViewController.swift
//  UIRotationGestureRecognizer
//
//  Created by MBP0037 on 4/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var rttImg: UIRotationGestureRecognizer!
    @IBOutlet weak var imgLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        rttImg.rotation = 0
    }

    
    @IBAction func actionRTTImg(_ sender: UIRotationGestureRecognizer) {
        imgLogo.transform = imgLogo.transform.rotated(by: sender.rotation)
        sender.rotation = 0
    }
}

