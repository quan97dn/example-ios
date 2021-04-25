//
//  ViewController.swift
//  MotionShake
//
//  Created by MBP0037 on 4/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHinh: UIImageView!
    var y: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (time) in
            self.y += 10
            UIView.animate(withDuration: 0.5) {
                self.imgHinh.layer.transform = CATransform3DMakeTranslation(0, self.y, 0)
            }
        }
    }

    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == UIEvent.EventSubtype.motionShake
        {
            self.y -= 30
            UIView.animate(withDuration: 0.2) {
                self.imgHinh.layer.transform = CATransform3DMakeTranslation(0, self.y, 0)
            }
        }
    }
}

