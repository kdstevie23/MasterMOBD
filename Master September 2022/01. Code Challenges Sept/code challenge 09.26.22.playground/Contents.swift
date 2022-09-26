import UIKit

var greeting = "Hello, playground"


var sheepArray = ["Sheep","Sheep","Sheep","Sheep","Sheep","Sheep","Sheep","Wolf"]

sheepArray.shuffle()

func findingWolf() {
    var sheepEnum = sheepArray.enumerated()
    
    for (index, animal) in sheepEnum {
        if animal == "Wolf" {
        sheepArray.remove(["Wolf"] - [1])
        print(index)
        }
    }
}
findingWolf()



