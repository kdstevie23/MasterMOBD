import UIKit

var greeting = "Hello, playground"





func takingArray(x: Int,y: Int,xx: Int,yy: Int) -> [Int] {
    
    var starting = [0,0,0,0]
    
    func calculatingMovement() {
        starting[0] += x
        starting[1] += y
        starting[2] += xx
        starting[3] += yy
    }
    calculatingMovement()

    var ending = [x - xx, y - yy]
    
    print("Robot walks \(x) steps North, then walks \(y) steps East, then walks \(xx) steps South, then \(yy) steps West. This results in the location \(ending)")
    
    return ending
}

print(takingArray(x: 100, y: 40, xx: 30, yy: 20))


