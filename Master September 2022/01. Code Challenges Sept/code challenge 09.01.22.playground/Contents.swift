//import UIKit
//
//func calculateArray(arrays: String) -> String{
//
//    var newString = ""
//
//    for char in arrays {
//        if let intValue = char.wholeNumberValue {
//            if intValue < 5 {
//                newString += "0"
//            }
//            else if intValue >= 5 {
//                newString += "1"
//            }
//        }
//    }
//}
//    let result = calculateArray(arrays: "12345678910")
//
//    print(result)
//

func Number(aString: String) -> String {
    var newOne = ""

    for char in aString {

        if let thing = char.wholeNumberValue {
            if thing < 5 {
                newOne += "0"
                }
            else if thing >= 5{
     newOne += "1"
            }
            
            
        }
    }
return newOne
}


let answer = Number(aString: "0123456789")
print(answer)
