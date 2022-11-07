import UIKit

var greeting = "Hello, playground"


func findingMultiples(multiple: Int, limit: Int) -> [Int] {
    
    if limit % multiple != 0 {
        print("Error")
    } else {
        var div = limit / multiple
        var lol = multiple * div
        
        for num in lol {
            print(num)
        }
        
    }
    
    findingMultiples(multiple: 2, limit: <#T##Int#>)
}
