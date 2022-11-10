//
//  ScoreBoardTableViewController.swift
//  ScoreBoard
//
//  Created by Steven Newman on 11/8/22.
//

import UIKit

class ScoreBoardTableViewController: UITableViewController, MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "getDataSegue" {
                let secondVC: AddPlayerVC = segue.destination as! AddPlayerVC
                secondVC.delegate = self
            }
        }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
     
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return 0
    }
}
