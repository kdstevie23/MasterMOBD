import UIKit

var greeting = "Hello, playground"


var dateYear: String = "2002"
var dateMonth: String = "10"
var dateDay: String = "02"


func convertToDate(_ dateString: String) -> String? {

    print(dateString)
    return dateString
}
convertToDate(dateYear + "-" + dateMonth + "-" + dateDay)






//
//
//func convertToDate(_ dateString: String) -> Date? {
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "yyyy-mm-dd"
//    return dateFormatter.date(from: String)
//}
