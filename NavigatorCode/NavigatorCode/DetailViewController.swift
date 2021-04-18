//
//  DetailViewController.swift
//  NavigatorCode
//
//  Created by MBP0037 on 4/18/21.
//

import UIKit

class DetailViewController: UIViewController {
    var data: String?
    @IBOutlet weak var lblData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblData.text = data?.lowercased()
    }
    

    @IBAction func onPressNavigator1(_ sender: UIButton) {
//        let scr = storyboard?.instantiateViewController(identifier: "NVG1") as! ViewController
//        present(scr, animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
