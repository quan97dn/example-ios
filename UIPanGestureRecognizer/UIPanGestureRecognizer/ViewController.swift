//
//  ViewController.swift
//  UIPanGestureRecognizer
//
//  Created by MBP0037 on 4/25/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionPanGesture(_ sender: UIPanGestureRecognizer) {
        let position = sender.translation(in: view)
        sender.view?.transform = (sender.view?.transform.translatedBy(x: position.x, y: position.y))!
        sender.setTranslation(CGPoint.zero, in: view)
    }
}

