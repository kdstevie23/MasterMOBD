//
//  ViewController.swift
//  INTERFACE BUILDER CONTROLS
//
//  Created by Steven Newman on 9/1/22.
//

import UIKit

class ItsTheViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after
        
        
    }
    @IBAction func colorSlider(_ slider: UISlider) {
        if slider.value > 0.5 {
            self.view.backgroundColor = .systemPink
        }else {
            self.view.backgroundColor = .blue
        }
    }
}
