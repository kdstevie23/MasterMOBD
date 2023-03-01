import UIKit
var greeting = "Hello, playground"
/*
 Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.

 For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

 [10, 343445353, 3453445, 3453545353453] should return 3453455.
 */




func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int? {
    // sort the array in ascending order
    let sortedArray = array.sorted()

    if array.count > 4 {
        return sortedArray[0] + sortedArray[1]
    } else {
        return nil
    }
}

sumOfTwoSmallestIntegersIn([19, 5, 42, 2, 77])
sumOfTwoSmallestIntegersIn([19, 5])
sumOfTwoSmallestIntegersIn([19, 50, 42, 20, 11])





//
//func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
//    var smallest = Int.max
//    var secondSmallest = Int.max
//
//    // find the two smallest elements in the array
//    for number in array {
//        if number < smallest {
//            secondSmallest = smallest
//            smallest = number
//        } else if number < secondSmallest {
//            secondSmallest = number
//        }
//    }
//
//    // return the sum of the two smallest elements
//    return smallest + secondSmallest
// }
