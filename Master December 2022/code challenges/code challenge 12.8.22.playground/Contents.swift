import UIKit

var greeting = "Hello, playground"



// Write an extension on Character that will check if two given characters are the same case.

// If either of the characters is not a letter, return -1
// If both characters are the same case, return 1
// If both characters are letters, but not the same case, return 0
// Examples

// 'a' and 'g' returns 1

// 'A' and 'C' returns 1

// 'b' and 'G' returns 0

// 'B' and 'g' returns 0

// '0' and '?' returns -1



class writing {
}


extension writing {
    func decidingNum(input1: Character, input2: Character) -> Int {
        
        var letters = "abcdefghijklmnopqrstuvwxyz"
        let decimalCharacters = CharacterSet.decimalDigits
        
        for char in (input1,input2) {
            if char == decimalCharacters {
                return -1
            } else if char == letters.lowercased() {
                return 0
            } else {
                return 1
            }
        }
    }
}
