import UIKit

func reverseSort(_ strings: [String]) -> [String] {
    let decendingstudents = strings.sorted(by: >)
    return decendingstudents
}
let sorter = reverseSort(["Lofi", "Abena", "Peter", "Keks", "Akosua", "Stevie", "Party", "Apple","Zambabwe"])

var string = ""

for sorting in sorter {
    string.append(sorting)
}

print(string)
