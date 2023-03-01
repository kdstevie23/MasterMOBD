import UIKit

var greeting = "Hello, playground"

//
//func returnString(_ a: Int,_ b: Int) -> String
//{
//
//    var concantinated: String
//
//    if a > b
//    {
//        concantinated = "\(b)" + "\(a)" + "\(b)"
//    } else
//    {
//        concantinated = "\(a)" + "\(b)" + "\(a)"
//    }
//
//    print(concantinated)
//    return concantinated
//
//}
//
//
//returnString(33,22)





func shortLongShort(a: Int, b: Int) -> String {
  let aString = String(a)
  let bString = String(b)
  
  if aString.count < bString.count {
    return aString + bString + aString
  } else {
    return bString + aString + bString
  }
}


shortLongShort(a: 5, b: 15)
