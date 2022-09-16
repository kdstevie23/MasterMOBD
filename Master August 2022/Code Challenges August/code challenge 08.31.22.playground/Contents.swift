import UIKit

func sumOfSquares(array: [Int]) -> Int{
    
    var sum: Int = 0
    for number in array {
        sum += number * number
        print(sum)
    }
    return 0
}

sumOfSquares(array: [1,2,2])


