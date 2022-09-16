import UIKit
//
//var greeting = "Hello, playground"
//
//
//var arrays = [1,2,3,4,5,6,7,8,9,10]
//
//
//func evenOrOdd() {
//
//    for (index) in arrays {
//
//        if(index.isMultiple(of: 2)){
//            print(index.isMultiple(of: 2), "IS EVEN")
//        }
//
//    }
//
//}
//
//print(evenOrOdd())

let arrays = [1,2,3,4,5,6,7,8,9,10]


func evenOrOdd(arr: [Int]) {

for num in arr {
    if num % 2 == 0 {
        print("\(num) EVEN")
        
    }else { print("\(num) ODD") }

    }
}

print(14 % 2)

evenOrOdd(arr: arrays)
