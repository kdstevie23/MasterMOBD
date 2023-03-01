//
//  ViewController.swift
//  tableViewRandomizerApp
//
//  Created by Steven Newman on 3/1/23.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    var names: [String] = []
    var randomName: String?
    
   
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var namePickerView: UIPickerView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        namePickerView.dataSource = self
        namePickerView.delegate = self
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func saveName(_ name: String) {
        names.insert(name, at: 0)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let name = textField.text else {
            return false
        }
        
        saveName(name)
        
        textField.text = ""
        textField.resignFirstResponder()
        namePickerView.reloadAllComponents()
        tableView.reloadData()
        
        return true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return names.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return names[row]
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        names.removeAll()
        randomName = nil
        namePickerView.reloadAllComponents()
        tableView.reloadData()
    }
    
    @IBAction func getRandomButtonTapped(_ sender: Any) {
        if let randomName = names.randomElement() {
            self.randomName = randomName
            tableView.reloadData()
        } else {
            randomName = nil
            tableView.reloadData()
            let alertController = UIAlertController(title: "No names entered yet", message: "Please enter some names first", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RandomNameCell", for: indexPath)
        
        if let randomName = randomName {
            cell.textLabel?.text = randomName
        } else {
            cell.textLabel?.text = "No name selected"
        }
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

//
//
//class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDelegate {
//    var names: [String] = []
//
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        nameTextField.delegate = self
//        namePickerView.dataSource = self
//        namePickerView.delegate = self
//    }
//
//    func saveName(_ name: String) {
//        names.append(name)
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        guard let name = textField.text else {
//            return false
//        }
//
//        saveName(name)
//
//        textField.text = ""
//        textField.resignFirstResponder()
//        namePickerView.reloadAllComponents()
//
//        return true
//    }
//
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return names.count
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return names[row]
//    }
//
//    @IBAction func resetButtonTapped(_ sender: Any) {
//            names.removeAll()
//            namePickerView.reloadAllComponents()
//        }
//
//
//    var namePicked = [String]()
//
//
//
//    @IBAction func getRandomButtonTapped(_ sender: Any) {
//
//           let randomName = names.randomElement()
//
//        guard let randomName = randomName else { return }
//        namePicked.append(randomName)
//       }
//
//    tableView(forr)
//
//}
//


//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    @IBOutlet weak var textFieldOutlet: UITextField!
//
//    @IBAction func enterNameAction(_ sender: UITextField) {
//textFieldShouldReturn(textFieldOutlet)
//    }
//
//
//    @IBOutlet weak var numberPlayersPicker: UIPickerView!
//
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
////        self.test(textField)
////        self.calledFromAnywhere()
//    }
//
//
//
//    func calledFromAnywhere () {
////        textFieldShouldReturn("\(textFieldOutlet.text)")
//    }
//
//
//
//    pickerData = []
//
//}
//
