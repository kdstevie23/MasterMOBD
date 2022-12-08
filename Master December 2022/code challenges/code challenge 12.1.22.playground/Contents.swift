import UIKit

var greeting = "Hello, playground"

// Given a string, you have to return a string in which each character (case-sensitive) is repeated once.

// Examples (Input -> Output):
// * "String"      -> "SSttrriinngg"
// * "Hello World" -> "HHeelllloo  WWoorrlldd"
// * "1234!_ "     -> "11223344!!__  "
// Good Luck!


//

func spam(word: String) -> String {

    var doubledString = ""

    word.forEach {character in doubledString += "\(character)\(character)"}
    print(dup)

    return doubledString
}

//
//struct User
//{
//    var name: String
//    var bio: String
//}
//
//
//
//func userChangedName()
//{
//    var name = "jeff" // this would be iboutlet for a text field
//    var bio = "this is the bio" // this would be iboutlet for a text field
//
//    User.init(name: name , bio: bio)
//}
//
//
//var name: String?
//{
//    willSet {
//        print("Name will change now.")
//    }
//
//    userChangedName()
//
//    didSet {
//        print("Name was changed.")
//    }
//}
//
//
//name = "default"
