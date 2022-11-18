//
//  AboutPeopleViewController.swift
//  familyProject
//
//  Created by Steven Newman on 11/18/22.
//

import UIKit




class AboutPeopleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person?.name
        bioLabelOutlet.text = person?.bio
        // Do any additional setup after loading the view.
    }
 
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bioLabelOutlet: UILabel!
    
    init?(coder: NSCoder, person: People?) {
        self.person = person
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    var person: People?
    
    
    
    func updateView()
    {
        
    }
    
    
    
    func nameLabelTextChanged(name: String) {
        person?.name = name
        updateView()
    }
    
//    @IBSegueAction func alanToPeople(_ coder: NSCoder) -> AboutPeopleViewController? {
//
//        guard let labelText: String = nameLabel.text else { return }
//
//        var person = People(name: labelText)
//
//        delegate?.
//
//    }
//
//    @IBSegueAction func jaimeToPeople(_ coder: NSCoder) -> AboutPeopleViewController? {
//        return <#AboutPeopleViewController(coder: coder)#>
//    }
//
//    @IBSegueAction func stevenToPeople(_ coder: NSCoder) -> AboutPeopleViewController? {
//        return <#AboutPeopleViewController(coder: coder)#>
//    }
//
//    @IBSegueAction func taylerToPeople(_ coder: NSCoder) -> AboutPeopleViewController? {
//        return <#AboutPeopleViewController(coder: coder)#>
//    }
//
//
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
