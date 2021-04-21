//
//  ViewController.swift
//  DemoUITapGestureRecognizer
//
//  Created by MBP0037 on 4/19/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTapPosition(_ sender: UITapGestureRecognizer) {
        let tap: UITapGestureRecognizer = sender as UITapGestureRecognizer
        let img: UIImageView = UIImageView()
        img.image = UIImage(named: "logo")
        img.frame.size = CGSize(width: 50, height: 50)
        img.center = tap.location(in: view)
        view.addSubview(img)
    }
    
}

