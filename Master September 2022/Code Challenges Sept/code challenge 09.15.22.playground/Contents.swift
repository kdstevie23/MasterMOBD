import UIKit

var greeting = "Hello, playground"

var arrayOfNums = [1,-4,7,12]


func positiveNumbers(arr: [Int]) -> Int {
    
    var oddNumbers = 0
    
    for num in arr {
        if num > 0 {
            oddNumbers += num
        }
    }
    return oddNumbers
}
print(positiveNumbers(arr: arrayOfNums))

