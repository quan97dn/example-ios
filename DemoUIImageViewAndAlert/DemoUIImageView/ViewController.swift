//
//  ViewController.swift
//  DemoUIImageView
//
//  Created by MBP0037 on 4/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgSlider: UIImageView!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    
    let imagesSlider: Array<String> = ["1", "2"];
    var imageIndex: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgSlider.image = UIImage(named: imagesSlider[0]);
    }

    override func viewDidAppear(_ animated: Bool) {
        
    }

    @IBAction func onPressBack(_ sender: Any) {
        imageIndex-=1
        if (imageIndex < 0) {
            imageIndex = imagesSlider.count - 1
        }
        print(imageIndex)
        imgSlider.image = UIImage(named: imagesSlider[imageIndex])
    }
    
    @IBAction func onPressNext(_ sender: Any) {
        imageIndex+=1
        if (imageIndex > imagesSlider.count - 1) {
            imageIndex = 0
        }
        imgSlider.image = UIImage(named: imagesSlider[imageIndex])
    }
    
    @IBAction func onPressShowAlert(_ sender: Any) {
        let alert: UIAlertController = UIAlertController(title: "Thông báo", message: "Xin chào các bạn", preferredStyle: UIAlertController.Style.alert)
        let btnOK: UIAlertAction = UIAlertAction(title: "OK", style: .destructive) { (btn) in
            print(btn)
        }
        let btnCance: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (btn) in
            print(btn)
        }
        alert.addAction(btnOK)
        alert.addAction(btnCance)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func onPressShowPopupForm(_ sender: Any) {
        let alert: UIAlertController = UIAlertController(title: "Form Confirm", message: "Đăng Nhập", preferredStyle: UIAlertController.Style.alert)
        
        alert.addTextField { (txtEmail) in
            txtEmail.placeholder = "📧 Vui Email Của Bạn"
        }
        alert.addTextField { (txtEmail) in
            txtEmail.placeholder = "🔒 Vui Password Của Bạn"
            txtEmail.isSecureTextEntry = true
        }
        
        let btnOK: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive) { (_) in
            let email: String = alert.textFields![0].text!
            let password: String = alert.textFields![1].text!
            if (email.contains("quan105dn") && password.contains("123456")) {
                self.showAlertLogin(message: "Đăng nhập thành công")
            } else {
                self.showAlertLogin(message: "Đăng nhập thất bại")
            }
        }
        alert.addAction(btnOK)
        present(alert, animated: true, completion: nil)
    }
    
    func showAlertLogin(message: String) {
        let alert: UIAlertController = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.actionSheet)
        let btnClose: UIAlertAction = UIAlertAction(title: "Close", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(btnClose)
        present(alert, animated: true, completion: nil)
    }
}

