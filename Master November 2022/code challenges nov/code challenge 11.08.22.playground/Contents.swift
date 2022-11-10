import UIKit

var greeting = "Hello, playground"

var collection = [9,2,3,8,10]


func CalcCollection() {
    var total = collection.reduce(0, +)
    
        var max = collection.max()
        var min = collection.min()
  
        
        print(total - (max! + min!))
    
    }
CalcCollection()
