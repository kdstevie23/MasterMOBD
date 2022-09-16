import UIKit

var greeting = "Hello, playground"


var color = "blue"
let number = 50
let letter = "a"
;

if color == "blue" {print("that is my favorite color")} else {print("Cool!")}

if number >= 0 && number <= 100 {print("That is a valid number")} else {print("that is not a valid number")}



let character = "e"
switch character {
    case "a","e","i","o","u" :
        print("That is a vowell")
    default: print("this character is not a vowell")
}
