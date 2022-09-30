import UIKit

var greeting = "Hello, playground"



func oneLineChallenge(_ total: Double) -> String {
    
    return String(format: "$%.2f", total)
    //            ^added ^fullNum ^.2 is how many decimals rounded. exe 3.14159 == 3.14 
}

oneLineChallenge(8)



