import UIKit

var greeting = "Hello, playground"



// Code Challenge
// Create a function that takes in an array of Int's as a parameter
// You will need to multiple each Int in the array by 5.
// The function will return the array of new Ints.


func multiplyByFive(numArray: [Int]) -> [Int] {
        var newArray = [Int]()
       // numbersArray = [1,2,5,10]
        for number in numArray {
            let newNumber = number * 5
            
            
            newArray.append(newNumber)
        }
        
        return newArray

    }


let multiplyAllByFive = multiplyByFive(numArray: [1,3,4,6])

print(multiplyAllByFive)
