import UIKit

var greeting = "Hello, playground"



func catDogYears(years: Int) -> [Int] {
    
    var dog: Int = 0
    var cat: Int = 0
    
    for num in 1...years {
        
        if num == 1 {
            dog += 15
            cat += 15
        }
        if num == 2 {
            dog += 9
            cat += 9
        }
        else if num > 2
        {
            dog += 5
            cat += 4
        }
    }
    return [dog, cat]
}

catDogYears(years: 5)
