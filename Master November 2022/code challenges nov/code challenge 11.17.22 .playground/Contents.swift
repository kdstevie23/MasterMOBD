import UIKit

var greeting = "Hello, playground"


func compareTo(a: Int, b: Int, margin: Int?) -> Int {
    if let margin = margin, abs(a-b) <= margin {
        return 0
    } else if a < b {
        return -1
    } else {
        return 1
    }
}
