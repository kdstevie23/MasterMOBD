import UIKit

var greeting = "Hello, playground"

var array = [3,2,4]
var target = 6


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indexes: [Int] = []
    
    for (i, num) in nums.enumerated() {
        indexes.append(i)
        for(j, num2) in nums.enumerated() {
            if(j != i && num + num2 == target) {
                indexes.append(j)
                return indexes
            }
        }
    }
}




//var arrayOfInt = [1,2,3,4,5,6,7,8,9]
//var target: Int = 10
//
//func returnInd() -> Int {
//
//    let addingArray: Int =
//
//    if addingArray > target
//    {
//        arrayOfInt.reduce(0, +)
//
//
//    }
//    else
//    {
//        print(addingArray)
//    }
//
//}
//
//for i in 0..<nums.count {
//    if nums[i] == target {
//        return [i]
//    }
//    else if nums[i] < target
//                for num in (i + 1)..<nums.count {
//        if nums[i] + nums
//    }
//}
