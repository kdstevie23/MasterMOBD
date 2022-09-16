//
//  ViewController.swift
//  Login Lab 09.15.22
//
//  Created by Steven Newman on 9/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var UsernameTextFieldEntered: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
     
        if segue.identifier == "loginButton" { segue.destination.navigationItem.title = UsernameTextFieldEntered.text
        } else if segue.identifier == "forgotUsername" {
            segue.destination.navigationItem.title = "FORGOT USERNAME"
        } else if segue.identifier == "forgotPassword" { segue.destination.navigationItem.title = "Forgot Password"}
    }
    
    
    
    
    @IBAction func ForgotUsername(_ sender: UIButton) {
    }
    @IBAction func ForgotPassword(_ sender: UIButton) {
    }
    
    @IBAction func LoginButton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

