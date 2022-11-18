//
//  EmployeeDetailsTableViewController.swift
//  testingWithJacek
//
//  Created by Steven Newman on 11/18/22.
//

import UIKit
protocol EmployeeDetailsTableViewControllerDelegate: AnyObject
{
    func employeeDetailedTableViewController(_ controller: EmployeeDetailsTableViewController, didSave employee: Employee)
}




class EmployeeDetailsTableViewController: UITableViewController, UITextFieldDelegate, EmployeeTypeTableViewControllerDelegate
{
    
    
    
    @IBOutlet weak var employeeTypeOutlet: UILabel!
  
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var DOBTextField: UILabel!
    
    
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        
    }
    
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        
        employee = nil
        
    }
    
    
    
    weak var delegate: EmployeeDetailsTableViewControllerDelegate?
    
    var employee: Employee?
    var employeeType: EmployeeType?
    
    let DOBCellindexPath = IndexPath(row: 1, section: 0)
    let DOBdatePickerIndexPath = IndexPath(row: 2, section: 0)
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        updateView()
        updateSaveButton()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    
    func updateView() {
        if let employee = employee {
            navigationItem.title = employee.name
            nameTextField.text = employee.name
            
            DOBTextField.text = employee.DOB.formatted(date: .abbreviated, time: .omitted)
            
            DOBTextField.textColor = .label
            
            employeeTypeOutlet.text = employee.employeeType.description
        }
    }
    
    
    
    func updateSaveButton() {
        
    }
    
    
    
    
    
    @IBSegueAction func employeeTypeActiom(_ coder: NSCoder) -> SelectingEmployeeTypeTableController? {
        let destination = SelectingEmployeeTypeTableController(coder: coder)
        destination?.delegate = self
        return destination
    }
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath == DOBCellindexPath {
            
        }
    }
}


// MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 2
//    }

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

/*
 override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
 
 // Configure the cell...
 
 return cell
 }
 */

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
