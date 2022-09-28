import UIKit

var greeting = "Hello, playground"





var studentScores = [4,5,7,8,2,3,4,9,9,9,9]

func calculateScores() {
    
    let sumArray = studentScores.reduce(0, +)
    let avgArrayValue = sumArray / studentScores.count
    
    print(avgArrayValue)
}

calculateScores()


