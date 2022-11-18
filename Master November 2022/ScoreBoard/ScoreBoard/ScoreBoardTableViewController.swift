//
//  ScoreBoardTableViewController.swift
//  ScoreBoard
//
//  Created by Steven Newman on 11/8/22.
//

import UIKit

//var score: Scores



class ScoreBoardTableViewController: UITableViewController, ReceiveDataFromAddNewPlayer, CellSort {
    
    
//
//    var row = indexPath.row
//
    func sortingCell(stepper: Int, row: Int) {
        players[row].currentScore = stepper
        
        
        players.sort()
        tableView.reloadData()
  
        
    }
    
    

    
    var players: [Player] = []
    
    
    
    
    func sortingPlayer() {
//           guard players.count > 0 else
//        { return }
//           func sort(newPlayer1: Player, newPlayer2: Player) -> Bool {
//               newPlayer1.currentScore > newPlayer2.currentScore
//           }
//           players.sort(by: sort(newPlayer1:newPlayer2:))
//           tableView.reloadData()
       }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

   
    var delegate: ReceiveDataFromAddNewPlayer?
    
    func scoreBoardTableViewControllerDelegate(newPlayer: Player) {
        self.players.append(newPlayer)
        self.players.sort()
        tableView.reloadData()
    }
    
    
    
    
    
    @IBSegueAction func addPlayerConfirmed(_ coder: NSCoder) -> AddPlayerVC? {
        
        let addPlayerVC = AddPlayerVC(coder: coder)
        
        
        addPlayerVC?.delegate = self
        
        
        return addPlayerVC
        
    }
    
   
    
    override func numberOfSections(in tableView: UITableView) -> Int {
           
           return 1
       }

       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          
           return players.count
       }
    
//
//    override func tableView(_ tableView: UITableView, cellForRowAt
//       indexPath: IndexPath) -> UITableViewCell {
//
//
//        let cell = tableView.dequeueReusableCell(withIdentifier:
//           "scoreCell", for: indexPath)
//
//    let player = toDos[indexPath.row]
//    var content = cell.defaultContentConfiguration()
//    content.text = toDo.title
//    cell.contentConfiguration = content
//    return cell
//    }
//
    
     
     
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreCell", for: indexPath) as! ScoreTableViewCell
        
        cell.nameCellOutlet.text =  "\(players[indexPath.row].playerName)"
        
        cell.scoreNumberCellOutlet.text = String(players[indexPath.row].currentScore)
        
        cell.StepperValueOutlet.value = Double(players[indexPath.row].currentScore)
        
        cell.delegate = self
        
        cell.row = indexPath.row
        
        
        
        
        
        return cell
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
//    @IBAction func unwindToScoreBoard(segue: UIStoryboardSegue)
//    {
//
//        guard segue.identifier == "scoreCell" else { return }
//            let sourceViewController = segue.source as!
//               AddPlayerVC
//
//            if let score = sourceViewController.score {
//                if let indexOfExistingToDo = toDos.firstIndex(of: toDo) {
//                    toDos[indexOfExistingToDo] = score
//                    tableView.reloadRows(at: [IndexPath(row: indexOfExistingToDo,
//                       section: 0)], with: .automatic)
//                } else {
//                    let newIndexPath = IndexPath(row: toDos.count, section: 0)
//                    toDos.append(toDo)
//                    tableView.insertRows(at: [newIndexPath], with: .automatic)
//                }
//            }
//    }
}
