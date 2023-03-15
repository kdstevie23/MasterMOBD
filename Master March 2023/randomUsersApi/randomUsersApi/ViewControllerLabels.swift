//
//  ViewControllerLabels.swift
//  randomUsersApi
//
//  Created by Steven Newman on 3/15/23.
//

import UIKit

class ViewControllerLabels: UIViewController {
    
    var boolArray: [Bool] = SelectionViewController.boolArray
    
    
    var theFirstName: String = ""
    var theLastName: String = ""
    var theImage: UIImage?
    
    @IBOutlet weak var firstNameLab: UILabel!
    @IBOutlet weak var lastNameLab: UILabel!
    @IBOutlet weak var imgOutlet: UIImageView!
    
    
    @IBOutlet weak var genderLabelOutlet: UILabel!
    @IBOutlet weak var idLabelOutlet: UILabel!
    @IBOutlet weak var emailLabelOutlet: UILabel!
    @IBOutlet weak var loginLabelOutlet: UILabel!
    @IBOutlet weak var phoneLabelOutlet: UILabel!
    @IBOutlet weak var dobLabelOutlet: UILabel!
    @IBOutlet weak var locationLabelOutlet: UILabel!
    @IBOutlet weak var registeredLabelOutlet: UILabel!
    @IBOutlet weak var cellLabelOutlet: UILabel!
    @IBOutlet weak var nationalityLabelOutlet: UILabel!
    
    
    @IBOutlet weak var genderOutlet: UILabel!
    @IBOutlet weak var idOutlet: UILabel!
    @IBOutlet weak var emailOutlet: UILabel!
    @IBOutlet weak var loginOutlet: UILabel!
    @IBOutlet weak var phoneOutlet: UILabel!
    @IBOutlet weak var dobOutlet: UILabel!
    @IBOutlet weak var locationOutlet: UILabel!
    @IBOutlet weak var registeredOutlet: UILabel!
    @IBOutlet weak var cellOutlet: UILabel!
    @IBOutlet weak var nationalityOutlet: UILabel!
    
    var theGender: String = ""
    var theID: String = ""
    var theEmail: String = ""
    var theLogin: String = ""
    var thePhone: String = ""
    var theDOB: String = ""
    var theLocation: String = ""
    var theRegistered: String = ""
    var theCellphone: String = ""
    var theNAT: String = ""
    
    
    @IBOutlet var stackOutlets: [UIStackView]!
    
    
    @IBOutlet var stackViewOutlets: [UIStackView]!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        changingName()
        
        for (index, value) in boolArray.enumerated() {
            if value != true {
                stackOutlets[index].isHidden = true
            }
        }
        
    }
    

    
        
    
    
    func changingName() {
        firstNameLab.text = theFirstName
        lastNameLab.text = theLastName
        imgOutlet.image = theImage
        genderOutlet.text = theGender
        idOutlet.text = theID
        emailOutlet.text = theEmail
        loginOutlet.text = theLogin
        phoneOutlet.text = thePhone
        dobOutlet.text = theDOB
        locationOutlet.text = theLocation
        registeredOutlet.text = theRegistered
        cellOutlet.text = theCellphone
        nationalityOutlet.text = theNAT
    }
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
