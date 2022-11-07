import UIKit

var greeting = "Hello, playground"


var testScores = [80,74,64,82, 56, 92, 100]
var myScore = 82

func calcAverage() -> Bool {
    
    var amountOfScores: Int = testScores.count
    let totalOfTestScores = testScores.reduce(0, +)
    let calcAverageScore = totalOfTestScores / amountOfScores
    
    print(amountOfScores)
    print(calcAverageScore)

    return myScore > calcAverageScore
    
}

print(calcAverage())
