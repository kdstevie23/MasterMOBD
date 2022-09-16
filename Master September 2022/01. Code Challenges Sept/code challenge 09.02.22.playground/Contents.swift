import UIKit

var greeting = "Hello, playground"

import UIKit


let loop = [4,3,9,7,2,1]

func square(integer: [Int]) {
    for num in integer {
        if num % 2 == 0 {
            print(num * num)
        } else if num.isMultiple(of: 2){
            let result = sqrt(Double(num))
            print(result)
        }
    }
}

square(integer: loop)
