import UIKit

var greeting = "Hello, playground"



func nonConsecNumber(in array: [Int]) -> Int? {

    let comparisonNuber = array.first!
        for int in array.dropFirst() {
            if int != comparisonNuber + 1 {
                return int
            } else {
                comparisonNuber
            }
    }
    return nil
}

nonConsecNumber(in: [1,2,3,4,5,6,7,8])

print(nonConsecNumber(in: [1,2,3,4,5,6,7]))
// ryan said it was good :)
