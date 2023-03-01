import UIKit

var greeting = "Hello, playground"


struct vowels {
    var a = 97
    var e = 101
    var i = 105
    var o = 111
    var u = 117
}

var numbers = vowels()


print(numbers)

func findindAscii(num: [Int]) -> String {
    
    if num == [numbers.a, numbers.e, numbers.i, numbers.o, numbers.u] {
        
        return "VOWELL"
        
    } else {
        
        return "ert"
        
    }
}

findindAscii(num: [101])
