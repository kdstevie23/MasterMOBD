//
//  AddPlayerVC.swift
//  ScoreBoard
//
//  Created by Steven Newman on 11/9/22.
//

import UIKit



protocol ReceiveDataFromAddNewPlayer {
    func scoreBoardTableViewControllerDelegate(newPlayer: Player)
}





class AddPlayerVC: UIViewController {
    
    @IBOutlet weak var PlayerNumberTextField: UITextField!
    @IBOutlet weak var ScoreTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    
    
    var delegate: ReceiveDataFromAddNewPlayer?
    var newPlayer: Player?
    
    
    
    func updateView() {
        if let newPlayer = newPlayer {
            PlayerNumberTextField.text = newPlayer.playerName
            ScoreTextField.text = String(newPlayer.currentScore)
            
        }
    }
    
    
    
    @IBAction func SaveAndAddButton(_ sender: Any)
{
        
        guard let playerName = PlayerNumberTextField.text, let currentScore = ScoreTextField.text else
        { return }
        
        
        
        self.delegate?.scoreBoardTableViewControllerDelegate(newPlayer: Player(playerName: playerName, currentScore: Int(currentScore) ?? 0))
        
        
        self.dismiss(animated: false)
                }
    
}
    
    
    

  
    
    
    


