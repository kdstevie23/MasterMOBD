import UIKit

class Person {
   var name = "Steven"
   var age = 19
   var weight = 150
   var favoriteColor = "White"
    
}


class Student: Person {
    
    var currentClass = "MOBD"
    var Grade = "A"
    var GPA = 3.63
    
}

let student = Student()

dump(student)
