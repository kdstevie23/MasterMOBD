import UIKit

var greeting = "Hello, playground"


// lets just assume that there are always 30 days in a month.


func todaysDateTrue() {
    //86400
    var daysSeconds = 0
    var day = 0
    let months = ["january", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    var num = 11
    let currentMonth = months[num]
    
    
    let seconds = 1.0
    
    
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            
            print(seconds)
            daysSeconds += 1
            
            if daysSeconds == 86400 {
                day += 1
                if day == 31 {
                    day = 0
                    num += 1
                    if num == 12 {
                        num = 0
                    }
                }
            }
        }
    }
}
    let todaysDate = "\(currentMonth) - \(day)"
    print(todaysDate)

todaysDateTrue()
