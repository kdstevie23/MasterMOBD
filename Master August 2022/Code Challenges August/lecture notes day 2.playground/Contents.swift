import UIKit

var greeting = "Hello, playground"



var temperature: Int = 64

switch temperature {
case Int.min..<65:
    print("Its too cold")
case 65...75:
    print("The temperature is just right")
default:
    print("Temperature is too hot")
}
print(temperature)

print(Int.min)
