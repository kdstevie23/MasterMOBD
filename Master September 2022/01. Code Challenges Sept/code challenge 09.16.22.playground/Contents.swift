import UIKit

var greeting = "Hello, playground"


func getGrade(s1: Int, s2: Int, s3: Int) -> String {
    
//    for (index : inte) in getGrade(s1: 4, s2: 5, s3: 6) {
        let average = (s1 + s2 + s3) / 3
    
        if average <= 100 && average >= 90 {
            return "\(average) Thats an A!"
        } else if average < 90 && average >= 80 {
            return "\(average) Thats a B"
        } else if average < 80 && average >= 70 {
            return "\(average) Thats a C"
        } else if average < 70 && average >= 60 {
            return "\(average) Thats a D"
        } else { return "\(average) You Failed, F!"
        

        }
}

getGrade(s1: 5, s2: 6, s3: 7)


