//
//  TableViewController.swift
//  randomUsersApi
//
//  Created by Steven Newman on 3/10/23.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        fetchApi()

    }

    
    @IBAction func reloadButton(_ sender: UIButton) {
        fetchApi()
    }
    
    
    var amountUsers = [RandomUserData]()
    
    var holdingImage: UIImage?
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(amountUsers.count)
        return amountUsers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! TableViewCell

        var users = amountUsers[indexPath.row]
        cell.firstNameLabel.text = users.results[0].name?.first
        cell.lastNameLabel.text = users.results[0].name?.last
        
        if let imageUrl = URL(string: users.results[0].picture?.large ?? "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.deviantart.com%2Fprincesszelda224%2Fart%2FYou-Just-Got-TROLLED-290948830&psig=AOvVaw09mHJEJrqSTgBvvxdgDYSl&ust=1678554773259000&source=images&cd=vfe&ved=0CA4QjRxqFwoTCLC2q_nt0f0CFQAAAAAdAAAAABAE") {
              URLSession.shared.dataTask(with: imageUrl) { (data, response, error) in
                if let error = error {
                    print("Error loading")
                } else if let data = data {
                  DispatchQueue.main.async {
                    let image = UIImage(data: data)
                    cell.tableImage.image = image
                      
                      self.holdingImage = image!
                  }
                }
              }.resume()
            }
        
        
        return cell
    }
    

    
    func fetchApi() {
        Task {
            do {
                let randomAPiController = RandomAPI.UserInfoController()
                let randomUser = try await randomAPiController.fetchRandomUser()
                amountUsers.append(randomUser)
                tableView.reloadData()
            } catch {
                print(error)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerLabels") as! ViewControllerLabels


        let selectedPerson = amountUsers[indexPath.row]
        destinationVC.theFirstName = "\(selectedPerson.results[0].name?.first ?? "Jhon")"
        destinationVC.theLastName = "\(selectedPerson.results[0].name?.last ?? "Cena")"
        destinationVC.theImage = holdingImage
        destinationVC.theGender = "\(selectedPerson.results[0].gender ?? "...")"
        destinationVC.theID =
        "\(selectedPerson.results[0].id?.value ?? "...")"
        destinationVC.theEmail = "\(selectedPerson.results[0].email ?? "...")"
        destinationVC.theLogin = "\(selectedPerson.results[0].login?.username ?? "...")"
        destinationVC.thePhone = "\(selectedPerson.results[0].phone ?? "...")"
        destinationVC.theDOB = "\(selectedPerson.results[0].dob?.date ?? "...")"
        destinationVC.theLocation = "\(selectedPerson.results[0].location?.state ?? "...")"
        destinationVC.theRegistered = "\(selectedPerson.results[0].registered?.date ?? "...")"
        destinationVC.theCellphone = "\(selectedPerson.results[0].cell ?? "...")"
        destinationVC.theNAT = "\(selectedPerson.results[0].nat ?? "...")"
        
        self.navigationController?.present(destinationVC, animated: true)
    }
}
