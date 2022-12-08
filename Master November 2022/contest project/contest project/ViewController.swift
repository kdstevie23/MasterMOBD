//
//  ViewController.swift
//  contest project
//
//  Created by Steven Newman on 11/28/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.emailTextField.layer.borderWidth = 1.3
        self.emailTextField.borderStyle = .none
        
        self.emailTextField.layer.cornerRadius = 15
    }

    
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        buttonPushed()
    }
    
    
    
    
    func buttonPushed () {
//            guard let validEmail = emailTextField.text else { return }
//            if validEmail.isValidEmail() {
//
//
//                let vc = self.storyboard?.instantiateViewController(withIdentifier: "enterInView") as! SecondViewController
//                self.navigationController?.pushViewController(vc, animated: true)
//                self.present(vc, animated: true, completion: nil)
//
//
//            } else {
//
                UIView.animate(withDuration: 0.1, delay: 0, options: .allowAnimatedContent, animations: {
                    
                    self.emailTextField.frame.origin.x += 5
                    self.emailTextField.layer.borderColor = UIColor.purple.cgColor
                    
                    
                }) { _ in
                    UIView.animate(withDuration: 0.1, delay: 0, options: .allowAnimatedContent, animations: {
                        self.emailTextField.frame.origin.x -= 10
                        self.emailTextField.layer.borderColor = UIColor.purple.cgColor
                        

                    }) { _ in
                        UIView.animate(withDuration: 0.1, delay: 0, options: .allowAnimatedContent) {
                            
                            self.emailTextField.frame.origin.x += 10
                            self.emailTextField.layer.borderColor = UIColor.purple.cgColor
                            

                            
                        } completion: { _ in
                            UIView.animate(withDuration: 0.1) {
                                self.emailTextField.frame.origin.x = 0
                                self.emailTextField.layer.borderColor = .none
                                
                                
                            }
                        }
                    }
                }
            }
            
        }
    

