import UIKit

var greeting = "Hello, playground"


var a = [1,2,3,4]
var x: Int = 4


//func findingNum() -> String{
//for num in a {
//        if num == x {
//            print("True")
//        } else {
//            print("False")
//        }
//    }
////    return
////}
func easy() -> Bool {
if a.contains(x) {
    return true
}else{
    return false
    
}
}
print(easy())



