//
//  ViewController.swift
//  randomUsersApi
//
//  Created by Steven Newman on 3/1/23.
//
//
//import UIKit
//
//
//class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    var boolArray: [Bool] = []
//    var options = ["Gender", "ID", "Email", "Login", "Phone", "DOB", "Location", "Registered?", "Cell", "Nat"] 
//    
//    
//    var users = [RandomUserData]()
//    
//    
//    
//    @IBOutlet weak var image: UIImageView!
//    @IBOutlet weak var firstName: UILabel!
//    @IBOutlet weak var lastName: UILabel!
//    
//        func boolArrayDidUpdate(_ boolArray: [Bool]) {
//            self.boolArray = boolArray
//            // Reload your table view data or do any other necessary updates
//        }
//    
//    
//    func displayOptions() {
//        for i in 0..<boolArray.count {
//            if boolArray[i] {
//                let cell = Cell(firstCellOutlet: options[i], secondCellOutlet: "")
//                cells.append(cell)
//                // or do any other necessary updates with the user object
//            }
//        }
//    }
//        
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            fetchApi()
//            // Do any additional setup after loading the view.
//        }
//    
//    var cells = [Cell]()
//    
//    
//    func fetchApi() {
//        Task {
//            do {
//                let randomAPiController = RandomAPI.UserInfoController()
//                let randomUser = try await randomAPiController.fetchRandomUser()
//                users.append(randomUser)
//            } catch {
//                print(error)
//            }
//        }
//    }
//    
//    
//   
//    
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserTableViewCell
//        let cellData = cells[indexPath.row]
//        cell.configure(with: cellData)
//        
//        
//        return cell
//    }
//    
//    
//    
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        let trueCount = boolArray.filter { $0 == true }.count
//        return trueCount
//    }
//}
