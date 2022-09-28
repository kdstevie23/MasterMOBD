//
//  ViewControllerGreenButton.swift
//  Tally app
//
//  Created by Steven Newman on 9/28/22.
//

import UIKit

class ViewControllerGreenButton: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    var total: Int = 0
    var value: Int = 0
    
    @IBOutlet weak var userInputTextOutlet: UITextField!
    
    @IBAction func userInputText(_ sender: UITextField) {
        
        guard let totalInt = Int(userInputTextOutlet.text!) else { return }
        
        value = totalInt
    }
    
    //        guard let totalInt = Int(userInputTextOutlet.text!) else { return }
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func ClearButton(_ sender: UIButton) {
        total = 0
        totalLabel.text = "0"
    }
    
    @IBAction func GreenButtonReal(_ sender: UIButton) {
        
        
        total += value
        totalLabel.text = String(total)
    }
    
}
