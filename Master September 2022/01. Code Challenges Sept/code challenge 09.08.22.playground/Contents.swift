import UIKit

var greeting = "Hello, playground"

//
var int1 = [2,3,3]
var int2 = [4,4,2]
//
////
//func cuboids(array : [String: Int]) -> Int {
//
//    for array in int1 {
//        int1[a * b * c]
//            }
//
//    for index in int2 {
//       let index2 = index + index
//    }
//
//}
//cuboids()
//




func cuboidVolume(_ dimensions: [Int]) -> Int? {
    if dimensions.count != 3 {
        return nil
    } else {
    
//    return dimensions[0] * dimensions[1] * dimensions[2]
//
        return dimensions.reduce(0, *)
    }
}

//
func differenceVolume(a: [Int], b: [Int]) -> Int? {
    if a.count != 3 || b.count != 3 {
        return nil
    }

//    let volumeA = cuboidVolume(a)
//    let volumeB = cuboidVolume(b)
//
//    return abs(volumeA - volumeB)
//}


    guard a.count == 3 && b.count == 3, let volumeA = differenceVolume(a: [2,3,3], b: [4,4,2])
} else {
    return nil
        print(differenceVolume)
    }
