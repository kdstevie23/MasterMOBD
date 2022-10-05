import UIKit

var greeting = "Hello, playground"

//
//var array = [1,3,2,5,4]
//
//func sortingArray() {
//
//    for num in array {
//        if num[0...10] > num[0...10] {
//            swap(num)
//        }
//    }
//
//}
//
//



func sort<T: Comparable>(_ array: inout [T]) {
    var i = 1
    while i < array.count {
        var x = array[i]
        var j = i - 1
        while j >= 0 && array[j] > x {
            array[j+1] = array[j]
            j -= 1
        }
        array[j+1] = x
        i += 1
    }
    var number = array
    print(number)
}



