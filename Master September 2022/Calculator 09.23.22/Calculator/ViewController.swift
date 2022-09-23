//
//  ViewController.swift
//  Calculator
//
//  Created by Zander Ewell on 9/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var starterNumberLabel: UILabel!
    
    var firstNumber = ""
    var secondNumber = ""
    var opperand = ""
//    var total = ""
    @IBOutlet weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        guard let labelText = starterNumberLabel.text, let newNum = sender.titleLabel?.text else { return }
        
        
        let buttonTitle: String  = (sender.titleLabel?.text)!
        
        
        if buttonTitle == "." {
            if starterNumberLabel.text!.contains(".") {
                
            } else {
                starterNumberLabel.text?.append(".")
            }
        } else if labelText == "0"{
            starterNumberLabel.text = newNum
        }
        else {
            starterNumberLabel.text = labelText + newNum
        }
    }
    var doingDivisionWhenPressed: Double = 0.0
    
    
    
    
    
    
    @IBAction func functionsOfMath(_ sender: UIButton) {
        
        let negativeplusequation = "-\(starterNumberLabel.text!)"
        


        guard let starter = Double(starterNumberLabel.text!) else { return }
//        guard let number2 = Double(starterNumberLabel.text!) else  { return }
        
        
        switch sender.titleLabel?.text {
        case "AC":
            firstNumber = ""
            secondNumber = ""
            starterNumberLabel.text = "0"
        
        case "+/-":
            starterNumberLabel.text = "\(negativeplusequation)"
        case "%":
            starterNumberLabel.text = "\(starter / 100)"
        case "÷":
            firstNumber = starterNumberLabel.text!
            print(firstNumber)
            starterNumberLabel.text = "0"
            opperand = "÷"
        case "x":
            firstNumber = starterNumberLabel.text!
            print(firstNumber)
            starterNumberLabel.text = "0"
            opperand = "x"
        case "-":
            firstNumber = starterNumberLabel.text!
            print(firstNumber)
            starterNumberLabel.text = "0"
            opperand = "-"
        case "+":
            firstNumber = starterNumberLabel.text!
            print(firstNumber)
            starterNumberLabel.text = "0"
            opperand = "+"
            
            
        case "=":
        switch opperand {
            
            
            case "+":
            secondNumber = (starterNumberLabel.text!)
            if let secondNumber = Double(secondNumber), let firstNumber = Double(firstNumber) {
                let total = firstNumber + secondNumber
                starterNumberLabel.text = String(total)
                self.firstNumber = String(total)
            }
            
            
            case "-":
            secondNumber = (starterNumberLabel.text!)
            if let secondNumber = Double(secondNumber), let firstNumber = Double(firstNumber) {
                let total = firstNumber - secondNumber
                starterNumberLabel.text = String(total)
                self.firstNumber = String(total)
            }
            
            case "x":
            secondNumber = (starterNumberLabel.text!)
            if let secondNumber = Double(secondNumber), let firstNumber = Double(firstNumber) {
                let total = firstNumber * secondNumber
                starterNumberLabel.text = String(total)
                self.firstNumber = String(total)
            }
            
            case "÷":
            secondNumber = (starterNumberLabel.text!)
            if let secondNumber = Double(secondNumber), let firstNumber = Double(firstNumber) {
                let total = firstNumber / secondNumber
                starterNumberLabel.text = String(total)
                self.firstNumber = String(total)
            }
           
        
            print("Enter")
            
            default:
            print("blah")
        }
        default: print("blah")
    }
        

}







}
