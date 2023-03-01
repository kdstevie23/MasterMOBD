import UIKit

var greeting = "Hello, playground"



func findingSquare(_ width: Double, _ height: Double) -> Double? {
    
    
    if width > 0 && height > 0 {
        
        if width == height {
            return width * height
        } else {
            return (width * 2) + (height * 2)
        }
    } else {
       return nil
    }
}


findingSquare(10, 12)
findingSquare(10, 10)
findingSquare(0, 2)
findingSquare(0, 0)
findingSquare(-10, 12)
