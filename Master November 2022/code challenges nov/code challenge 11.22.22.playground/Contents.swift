import UIKit

var greeting = "Hello, playground"

//
//var stairs = [sunday,monday,tuesday,wednesday,thursday,friday,saturday]
//
//var monday = [Int.random(in: 200..<10000)]
//var tuesday = [Int.random(in: 200..<10000)]
//var wednesday = [Int.random(in: 200..<10000)]
//var thursday = [Int.random(in: 200..<10000)]
//var friday = [Int.random(in: 200..<10000)]
//var saturday = [Int.random(in: 200..<10000)]
//var sunday = [Int.random(in: 200..<10000]
//
//
//
//func calcNumberOfSteps() {
//
//    var oneYear = (stairs.reduce(0, +) * 52)
//
//    print(oneYear)
//
//    var twentyYear = oneYear * 20
//
//    print(twentyYear)
//
//}

func stairsEstimate(stairs: [[Int]]) -> Int {
    var total = 0
    for weekday in stairs {
        for day in weekday {
            total += day
        }
    }
    
    return total * 20
}
