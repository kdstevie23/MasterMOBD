//
//  ViewController.swift
//  09.19.22
//
//  Created by Steven Newman on 9/19/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelRoot.text = "Hello World"
    }

    
    @IBOutlet weak var labelRoot: UILabel!
    
    
    @IBAction func buttonWasTapped(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.labelText = "Chicken Joe"
        }
    }
}

