import UIKit
//
//var array = [1,2,3,4,5,6,7,8,9,-1,-2,-3,-4,-5]
//
//func countingArray() {
//    var i: Int = 0
//
//    for num in array {
//
//        if num > 0 { print(num)
//        } else if
//        num <= 0 { i += num}
//
//
//        var negTotal = i
//
//        print(negTotal)
//    }
//
//}
//
//print(countingArray())


func countingArray(numbers: [Int]) -> [Int] {
//    guard let numbers = numbers, numbers != [] else {
//        return nil
//    }
    
    var countOfPsoitives = 0
    var sumOfNeg = 0
    
    for number in numbers {
        
        if number > 0 {
           
            countOfPsoitives += 1
            
        }else{
            
            sumOfNeg += number
        }
    }
    return[countOfPsoitives, sumOfNeg]
}

var testData = [1,2,3,4,5,6,7,8,9,-1,-2,-3,-4]

let results = countingArray(numbers: testData)

print(results)
