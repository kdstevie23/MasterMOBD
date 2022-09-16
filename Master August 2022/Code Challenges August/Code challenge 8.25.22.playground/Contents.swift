import UIKit


class Person {
    var name: String
    var age: Int
    var height: Double
    var weight: Int
    let birthday: String
    
    init(name: String, age: Int, height: Double, weight: Int, birthday: String) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.birthday = birthday
    }
}
//
//class personsBirthday: Person {
//    let birthday: String
//
//    init(birthday: String) {
//    self.birthday = birthday
//    }
//
//    super.init(name: String, age: Int, height: Double, weight: Int) {
//            self.name = name
//            self.age = age
//            self.height = height
//            self.weight = weight
//        }
//}


let person = Person(
    name: "Steven",age: 19, height: 5.11, weight: 155, birthday: "October 2"
)

print(
    "Hello, my name is \(person.name), and I am \(person.age) years old!"
)

var month = "August"
var day = "25"
var isBirthday = false

func hasBirthday() {
    if person.birthday == month + day {
        isBirthday = true
    }
}

if isBirthday == true {person.age += 1}
if day == "32" {day = "1"}


