//
//  SelectionViewController.swift
//  randomUsersApi
//
//  Created by Steven Newman on 3/8/23.
//

import UIKit

class SelectionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    static var boolArray = [true, true, true, true, true, true, true, true, true, true]
    
    var amount = [Int]()
    
    
    func checkingIsTrue() {
        for index in 0..<SelectionViewController.boolArray.count {
            if SelectionViewController.boolArray[index] {
                amount.append(index)
            }
        }
    }
    
    
    
    
    @IBOutlet var switchesOutlets: [UISwitch]!
    
    @IBAction func switched(_ sender: UISwitch) {
        let theSwitch = switchesOutlets.firstIndex(of: sender)!
        SelectionViewController.boolArray[theSwitch].toggle()
    }
    
    
    
   
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if boolArray
    //    }
    
    
}





    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


