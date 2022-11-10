import UIKit

var greeting = "Hello, playground"




func isDivisable(num: Int, x: Int, y: Int) -> Bool {
    
    
    if ((num % x) == 0) && ((num % y) == 0) {
        
        print("True")
        return true
        
    } else {
        
        print("False")
        return false
    }
}

isDivisable(num: 10, x: 5, y: 2)
isDivisable(num: 11, x: 5, y: 2)
