//
//  DynamicPostsTableViewController.swift
//  socialMediaV2TableView
//
//  Created by Steven Newman on 11/16/22.
//

import UIKit
//
//extension DynamicPostsTableViewController:  CreatePostViewControllerDelegate {
//
//}


class DynamicPostsTableViewController: UITableViewController, CreatePostViewControllerDelegate {
    
    
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    
    func addPost(post: Post) {
        posts.append(post)
        tableView.reloadData()
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
   
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return posts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCells", for: indexPath) as! DynamicPostsTableViewCell
        
        let post = posts[indexPath.row]

        cell.userLabel.text = post.user
        cell.commentLabel.text = post.comment
        return cell
        
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt: IndexPath) -> CGFloat {
        return 150
    }
    
    @IBAction func makePostTapped(_ sender: Any) {
        
        let storyB = UIStoryboard(name: "Main", bundle: nil)
        
        if let createViewController = storyB.instantiateViewController(withIdentifier: "CreatePostViewController") as? CreatePostViewController {
            
            createViewController.delegate = self
            
            self.navigationController?.pushViewController(createViewController, animated: true)
        }
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
