import UIKit

var greeting = "Hello, playground"


// You are given an array with positive numbers and a non-negative number N. You should find the N-th power of the element in the array with the index N. If N is outside of the array, then return nil. Don't forget that the first element has the index 0.

// Let's look at a few examples:

// array = [1, 2, 3, 4] and N = 2, then the result is 3^2 == 9;
// array = [1, 2, 3] and N = 3, but N is outside of the array, so the result is nil.






func calcPower(array: [Int]? , n: Int) -> Int? {
    
    
    guard let array = array else{
        return nil
    }
    
    
    for num in array {
        return num[n] * n
       
    }
    return Int(array)
}

calcPower(array: [1,2,3,4], n: 2)


