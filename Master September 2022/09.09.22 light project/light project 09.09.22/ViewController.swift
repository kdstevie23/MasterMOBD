//
//  ViewController.swift
//  light project 09.09.22
//
//  Created by Steven Newman on 9/9/22.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
var lightOn = true
    @IBAction func buttonClicked(_ sender: UIButton) {
        lightOn.toggle()
        
        if lightOn {
        view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    
}

}
