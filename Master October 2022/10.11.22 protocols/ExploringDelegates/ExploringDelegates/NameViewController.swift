//
//  ViewController.swift
//  ExploringDelegates
//
//  Created by Mike Collier on 10/10/22.
//

import UIKit

class NameViewController: UIViewController, UITextFieldDelegate
{
    let showDetailSegueIdentifier = "showDetail"
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
        
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        nameField.delegate = self
    }
    
    
    @IBAction func doneTapped(_ sender: Any)
    {
        nameField.resignFirstResponder()
    }
    
    
    @IBAction func selectColorTapped(_ sender: Any)
    {
        performSegue(withIdentifier: showDetailSegueIdentifier, sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        guard let vc = segue.destination as? ColorSelectViewController else {
            return }
        
        vc.delegate = self
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        print("Begin enditing")
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        print("End edditing")
        nameLabel.text = "Hello \(textField.text ?? "")!"
    }
}


extension NameViewController: ColorSelectViewControllerDelegate
{
    func colorSelected(_ color: UIColor)
    {
        nameLabel.textColor = color
        view.backgroundColor = color
           // .getRed(0.1, green: 0.2, blue: 0.3, alpha: 1.0)
    }
    
}
