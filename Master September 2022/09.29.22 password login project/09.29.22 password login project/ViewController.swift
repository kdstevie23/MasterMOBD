//
//  ViewController.swift
//  09.29.22 password login project
//
//  Created by Steven Newman on 9/29/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        
        usernameLabel.textColor = .white
        passwordLabel.textColor = .white
        //        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "iphone4ktrees.png")!)
    }
    
    func assignbackground(){
        let background = UIImage(named: "black4k.jpeg")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    func containsSpecialCharacter(password: String?) -> Bool {
        guard let password = password else { return false }
        
        let regex = ".*[^A-Za-z0-9].*"
        let testString = NSPredicate(format:"SELF MATCHES %@", regex)
        return testString.evaluate(with: password)
    }
    
    func containsUppercaseCharacter(password: String?) -> Bool {
        guard let password = password else { return false }
        
        let regex = ".*[^a-z0-9].*"
        let testString = NSPredicate(format:"SELF MATCHES %@", regex)
        return testString.evaluate(with: password)
    }
    
    func containsNumberCharacter(password: String?) -> Bool {
        guard let password = password else { return false }
        
        let regex = ".*[^A-Za-z].*"
        let testString = NSPredicate(format:"SELF MATCHES %@", regex)
        return testString.evaluate(with: password)
    }
    
    let viewController2 = ViewController2()
    
    @IBAction public func login() {
        guard let password = passwordLabel.text else {return}
        
        if passwordLabel.text!.count < 8
        {
            print("error")
        }
        
        //List each way this can fail
        else if !containsSpecialCharacter(password: passwordLabel.text)
        {
            print("error")
        }
        
        
        else if !containsUppercaseCharacter(password: passwordLabel.text)
        {
            print("error")
        }
        
        else if !containsNumberCharacter(password: passwordLabel.text)
        {
            print("error")
        }
        
        else
        {
        self.navigationController?.pushViewController(viewController2, animated: true)
        }
    }
}

//if it doesn't have a number then fail

//if it doesn't have a capital letter then fail

//if you made it this far, you succeeded
//present alert or push viewcontroller
