import UIKit

var greeting = "Hello, playground"





func determiningIfThroughNine(in string: Double) -> String
{
//    guard let string = string else {return "Erorr"}\
    if string >= 0 && string <= 9
    {
        return "True"
        } else {
        return "False"
    }
}

print(determiningIfThroughNine(in: 7.28))


