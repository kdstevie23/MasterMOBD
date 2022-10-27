import UIKit

var greeting = "Hello, playground"

    func isPalindrome(word: String ) -> Bool
    {
        let backwardsWord = String(word.reversed())
        
        if (word != "" && word.lowercased().replacingOccurrences(of: " ", with: "") ==  backwardsWord.lowercased().replacingOccurrences(of: " ", with: ""))
        {
            return true
        } else {
            return false
        }
    }

let word = "Race car"

print("\(word) - ",isPalindrome(word: word))


