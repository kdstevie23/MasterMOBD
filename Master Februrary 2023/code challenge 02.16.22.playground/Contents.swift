import UIKit

var greeting = "Hello, playground"

// Create a function which simplifies a given fraction into its simplest ratio. Return the fraction as a string.

// Examples
// simplifyFrac("2/4") ➞ "1/2"

// simplifyFrac("15/25") ➞ "3/5"

// simplifyFrac("4/9") ➞ "4/9"

// Notes
// Fractions are given as strings.
// Return the same fraction if it is already in its simplified ratio (see example #3).






func simplify(num: Int, dom: Int) -> String {
    
    for number in (2...dom).reversed() {
        if num % number == 0 && dom % number == 0 {
            print(number)
            var result1 = num / number
            var result2 = dom / number
            return simplify(num: result1, dom: result2)
        }
    }
    return "\(num) / \(dom)"
}


simplify(num: 316, dom: 2412)
