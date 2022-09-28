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
    var total = ""
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
        
        
        var negativeplusequation = Int(starterNumberLabel.text!)
        
        func equationNegativePositive() -> Int {
            if negativeplusequation! > 0 {
                negativeplusequation! = (negativeplusequation! * (-1))
            } else if negativeplusequation! < 0 {
                negativeplusequation! = (negativeplusequation! * (-1))
            }
            return negativeplusequation!
        }
        
        
        var realTotal = Int(total)
        
        func equationNegativePositiveTotal() -> Int {
            if realTotal! > 0 {
                realTotal! = (realTotal! * (-1))
            } else if (realTotal! < 0) {
                realTotal! = (realTotal! * (-1))
            }
            return realTotal!
        }
        
    


        guard let starter = Double(starterNumberLabel.text!) else { return }
//        guard let number2 = Double(starterNumberLabel.text!) else  { return }
        
        
        switch sender.titleLabel?.text {
        case "AC":
            firstNumber = ""
            secondNumber = ""
            total = ""
            starterNumberLabel.text = "0"
        
        case "+/-":
            
            equationNegativePositive()
            starterNumberLabel.text! = String(negativeplusequation!)
            
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
           
            total = starterNumberLabel.text!
            
            starterNumberLabel.text = String(total)
            print("Enter")
            
            default:
            print("blah")
        }
        default: print("blah")
    }
        

}







}
