//
//  AddPlayerVC.swift
//  ScoreBoard
//
//  Created by Steven Newman on 11/9/22.
//

import UIKit


protocol MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String)
}



class AddPlayerVC: UIViewController {
    
    var delegate: MyDataSendingDelegateProtocol? = nil
    
    @IBOutlet weak var PlayerNumberTextField: UITextField!
    @IBOutlet weak var ScoreTextField: UITextField!
    
    
    
    
    @IBAction func SaveAndAddButton(_ sender: UIButton) {
        if self.delegate != nil && self.PlayerNumberTextField.text != nil {
            let dataToBeSent = self.PlayerNumberTextField.text
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent!)
                    dismiss(animated: true, completion: nil)
                }
            }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    
    
    

}
