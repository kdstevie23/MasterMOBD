//
//  TableViewController.swift
//  familyProject
//
//  Created by Steven Newman on 11/18/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    
    var people: [People] = [
        People(name: "Alan", bio: "He loves riding motorcycles, and outdoor activities in general. Works for his own construction company he started in 2014. Super hard worker, rarely has time do do anything fun. Has been to body building competitions and coached people at the gym with their diets and workout routines"),
        People(name: "Jaime", bio: "Jaime, such an amazing momma. Works as an interior designer for her own company she started back in 2018. Shes super generous and loving. Also super forgiving and hard working."),
        People(name: "Steven", bio: ""),
        People(name: "Tayler", bio: "")]
    
    
    //
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return people.count
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleCell", for: indexPath) as! TableViewCell
        let person = people[indexPath.row]
        cell.update(with: person)
        
        
        cell.showsReorderControl = true
        
        // Configure the cell...
        
        return cell
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    

    @IBSegueAction func segueAbout(_ coder: NSCoder, sender: Any?) -> AboutPeopleViewController? {
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let aboutPerson = people[indexPath.row]
            return AboutPeopleViewController(coder: coder, person: aboutPerson)
        } else {
            return AboutPeopleViewController(coder: coder)}
    }
    
}
    
    
    
    
//    open var test = people.name.text
    
//
//    @IBSegueAction func segueToAbout(_ coder: NSCoder, sender: Any?) -> TableViewController? {
//
//        if let cell = sender as? UITableViewCell,
//           let indexPath = tableView.indexPath(for: cell) {
//            let emojiToEdit = emojis[indexPath.row]
//            return EmojiEditTableViewController(coder: coder, emoji: emojiToEdit)
//        } else {
//            return EmojiEditTableViewController(coder: coder, emoji: nil)}
//    }
//

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

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
