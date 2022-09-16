import UIKit

var greeting = "Hello, playground"

var x1 = 10
var x2 = 12
var y1 = 8
var y2 = 10

func distance() -> Int {
    
    let total = ((x2 - x1)^2) + ((y2 - y1)^2)
    
    let returned = sqrt(Double(total))
    
    return Int(returned)
    
}

//func distance(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
//
//    let total = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2))
//
//    return total
//

distance()

print(distance())
