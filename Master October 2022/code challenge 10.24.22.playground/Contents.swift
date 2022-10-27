import UIKit

var greeting = "Hello, playground"

//
//var hr: Int = 1
//var fiveMin: Int = 3
//var min: Int = 3
//
//
//func timeString(hr: Int, fiveMin: Int, min: Int) -> String {
//
//    if hr > 12 {
//        hr = 1
//    }
//
//    if fiveMin != (fiveMin % 2) {
//        min += 5
//    }
//
//    var time = "\(hr)" + "\(fiveMin / 2)" + "\(min)"
//#imageLiteral(resourceName: "dog.jpeg")
//    return time
//}


struct Ballcount{
    var hr: Int
    var fiveMin: Int
    var min: Int
}

func timeString(from ballCounts: BallCount) -> String {
