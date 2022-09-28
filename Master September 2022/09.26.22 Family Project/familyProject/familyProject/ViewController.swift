//
//  ViewController.swift
//  familyProject
//
//  Created by Steven Newman on 9/26/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    @IBAction func colorSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)  {
            view.backgroundColor = .white ;
//            totalCookiesLabel.textColor = .white
        } else { view.backgroundColor = .black}
    }
    
    
 
    @IBOutlet weak var totalCookiesLabel: UILabel!
    
    var cookieTotal: Int = 0
    @IBAction func cookieButton(_ sender: UIButton) {
        
        cookieTotal += 1
        totalCookiesLabel.text = String(cookieTotal)
        
    }
}
