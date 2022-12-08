import UIKit

var greeting = "Hello, playground"

var array = [10,4,3,2,1]
// (10 - 4) + (4 - 3) + (3 - 2) + (2 - 1) = (6 + 1 + 1 + 1)

func calcArray() -> Int {
    if array.count < 1 {
        return 0
    } else {
        
        let sorted = array.sorted(by: >)
        let total = 0
        for num in 0..<(sorted.count - 1) {
            
            total += (array[index] - array[index + 1])
            
        }
        return total
    }
}
