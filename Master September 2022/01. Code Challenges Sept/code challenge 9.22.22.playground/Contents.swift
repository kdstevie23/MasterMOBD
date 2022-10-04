import UIKit

var greeting = "Hello, playground"
var answer: Int

func summ(n: Int) -> Int {
    guard n > 0 else { return n }

    if(n == 1) {
        return n
    }
    return n + summ(n: n - 1)
}
summ(n: 8)


//func summation(num: Int) -> Int {
//    for numb in 1..<num {
//
//        return num + numb }
//
//return 0
//}
//
//summation(num: 7)
//for number in 1..<num {
//
//}

//func suummationTwo(n: Int) -> Int {
//    guard n > 0 else { return n }
//
//    var runningTotal = 0
//
//    for i in 1...n {
//        runningTotal += i
//   }
//return runningTotal
//}
//suummationTwo(n: 8)
