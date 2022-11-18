//
//  EditProfileScreenViewController.swift
//  socialMediaV2TableView
//
//  Created by Steven Newman on 11/10/22.
//

import UIKit

protocol EditProfileScreenViewControllerDelegate {
    func bioTextChanged(text: String)
}

class EditProfileScreenViewController: UIViewController {

    
    var delegate: EditProfileScreenViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var EditBioTextFieldOutlet: UITextField!
    
     @IBAction func SaveButtonAction(_ sender: Any) {
         delegate?.bioTextChanged(text: EditBioTextFieldOutlet.text!)
         
         self.dismiss(animated: true)
     }
}
