import UIKit

var greeting = "Hello, playground"

//
//func noChar(string: String) -> String {
//    var i = string.index(string.startIndex, offsetBy: 4)
//
//    for char in string {
//        if char == String(0...9) {
//            string.remove(at: i)
//        }
//    }
//
//    print(char)
//}
//
//noChar(string: "abscs12")


var str = "i like9 chi7cken677667890-!@$%09876543"


func removingTheNums() {
   
    let removeCharacters: Set<Character> = ["0","1","2","3","4","5","6","7","8","9"]
    
    str.removeAll(where: { removeCharacters.contains($0) } )
    print(str)
    
}

removingTheNums()
