import UIKit

var greeting = "Hello, playground"


func fElements(array: [Int],n:Int) -> [Int]{
 
    return Array(array[..<n])
}
fElements(array: [0,1,2,3], n: 2)
