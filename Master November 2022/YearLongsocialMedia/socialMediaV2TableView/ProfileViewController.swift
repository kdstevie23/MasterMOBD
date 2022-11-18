//
//  ProfileViewController.swift
//  socialMediaV2TableView
//
//  Created by Steven Newman on 11/10/22.
//

import UIKit



class ProfileViewController: UIViewController, EditProfileScreenViewControllerDelegate  {
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        updateView()
    }
    
    var bio: Bio = Bio(text: "Default bio here")
    
    
    
    
    
    @IBOutlet weak var bioOutlet: UILabel!
 
    
    
    func bioTextChanged(text: String) {
        bio.text = text
        updateView()
    }
    
    
    func updateView()
    {
        bioOutlet.text = bio.text
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let vc = segue.destination as? EditProfileScreenViewController
        {
            
            vc.delegate = self
        }
    }
}
