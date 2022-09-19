import UIKit

var greeting = "Hello, playground"

//var number = 1905
//
//
//if number < 1000 {
//    return "Before the first Century"
//} else if number >= 1000 && number < 2000 {
//    return "1st Century"
//} else if number >= 2000 {
//    return "2nd Century"
//}


var thousands = [1,2]
var hundreds = [1,2]
var tens = [1,2,3,4,5,6,7,8,9]
var ones = [0,1,2,3,4,5,6,7,8,9]

var numberArray = [thousands.randomElement(), hundreds.randomElement(), tens.randomElement(), ones.randomElement()]

var returnFirst = [1,2]
var returnSecond = [1,2,3]



//var finalAnswer = [returnFirst, returnSecond]
//


for _ in numberArray {

    if thousands == [0] {
        returnFirst = [0]
    } else {
        returnFirst = [1]
    }

    
    if hundreds == [0] && ones == [0] {
        returnSecond = [0]
    } else if hundreds == [0] && ones != [0] {
        returnSecond = [1]
    } else if hundreds == [1] && ones == [0] {
        returnSecond = [1]
    } else {
        returnSecond = [2]
    }
    
    
    let first = returnFirst
    let second = returnSecond
    
    print(first)
    print(second)
    
    let firstAndSecond = ["This is the", first, second,"th Century"] as [Any]
    print(firstAndSecond)

}
  
    

   
//}

//
//func century(year: Int) -> Int {
//    guard year > 0 else {return 0}
//
//    return (year % 100 == 0) ? year/100 : year + 1
//}
