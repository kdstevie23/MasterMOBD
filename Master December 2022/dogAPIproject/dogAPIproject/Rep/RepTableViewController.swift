//
//  RepTableViewController.swift
//  dogAPIproject
//
//  Created by Steven Newman on 12/13/22.
//

import UIKit

class RepTableViewController: UITableViewController
{
    
    
    @IBOutlet weak var searchBarOutlet: UISearchBar!
    

    let viewController = repController()
    var items = [People]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.reloadData()
        searchBarOutlet.delegate = self
        
    }
    
    
    var people: People?
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "repCell", for: indexPath) as! TableViewCell
        //
        //                cell.nameOutlet?.text = people?.name
        //                cell.politicalPartyOutlet?.text = people?.party
        //                cell.linkOutlet.text = "\(people!.link)"
        
        
        let repCell = items[indexPath.row]
        cell.nameOutlet?.text = repCell.name
        cell.politicalPartyOutlet?.text = "\(repCell.party),  \(repCell.state)"
        cell.linkOutlet.text = "link: \(repCell.link)"
        
      
        
        return cell
    }
    
    
    
    func fetchMatchingItems() {
        
        self.items = []
        
        
        
        let searchTerm = searchBarOutlet.text ?? ""
        
        if !searchTerm.isEmpty {
            let query = [
                "zip": searchTerm,
                "output": "json"
            ]
            
            _ = Task {
                do {
                    let items = try await viewController.fetchRepInfo(zipCode: query)
                    self.items = items
                    self.tableView.reloadData()
                } catch {
                    print(error)
                }
            }
        }
        
        self.tableView.reloadData()
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
    }
    
    func refresh() {
//        self.tableView.reloadData()
    }
}
    
    extension RepTableViewController: UISearchBarDelegate {
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            fetchMatchingItems()
            searchBarOutlet.resignFirstResponder()
        }
    }

