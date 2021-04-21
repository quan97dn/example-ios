//
//  ViewController.swift
//  UIPinchGestureRecognizer
//
//  Created by MBP0037 on 4/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pingchImg: UIPinchGestureRecognizer!
    @IBOutlet weak var imgLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pingchImg.scale = 1
    }

    @IBAction func actionPinchImg(_ sender: UIPinchGestureRecognizer) {
        print(sender.scale)
//        imgLogo.transform = imgLogo.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
        pingchImg.scale = 1
    }
    
}

