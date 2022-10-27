import UIKit

var greeting = "Hello, playground"

var array = ["Chicken","Pigs", "Happy", "Dogs", "Plays"]



func takeInArray() {
    for char in array {
        if char.contains("s") {
            print(char)
        }
    }
}
takeInArray()
