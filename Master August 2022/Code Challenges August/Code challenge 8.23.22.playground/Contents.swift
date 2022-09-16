import UIKit

var greeting = "Hello, playground"



struct Rectangle {
    
    var sideA: Int
    var sideB: Int
    let scaled: Int
    
    
    func area() -> Int {
        let theArea = sideA * sideB
        return theArea
    }
    
    func perimeter() -> Int {
        
        let thePerimeter = (sideA * 2) + (sideB * 2)
        return thePerimeter
        
    }
    
    mutating func scale() {
        sideA = scaled * sideA
        sideB = scaled * sideB
    }
    
}


