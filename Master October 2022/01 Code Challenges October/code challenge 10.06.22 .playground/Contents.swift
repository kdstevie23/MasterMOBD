import UIKit

var greeting = "Hello, playground"

//
//var randomArray = [1,3,2,5,4]
//func selectionSorting()
//{
//    for index in 0 ..< self.count - 1
//    {
//         var minIndex = index
//    for compareIndex in index + 1 ..< self.count
//        {
//                if self[compareIndex] < self[index]
//            {
//                  minIndex = compareIndex
//            }
//        }
//        swapAt(index, minIndex)
//    }
//}



func selectionSort(nums: [Int]) -> [Int] {
    
    var myNums = nums
    
    for i in 0..<myNums.count {
        var smallestNum = myNums[i]
        var index = i
        for j in 0..<myNums.count {
            if j < i {
                continue
            }
            if smallestNum > myNums[j] {
                smallestNum = myNums[j]
                index = j
            }
            if (j+1 == myNums.count) {
                myNums.insert(smallestNum, at: i)
                myNums.remove(at: index + 1)
            }
        }
    }
    return myNums
}

var chicken = selectionSort(nums: [1,5,2,3,4])

print(chicken)
