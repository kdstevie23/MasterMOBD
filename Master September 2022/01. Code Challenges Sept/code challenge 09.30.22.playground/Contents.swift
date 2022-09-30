import UIKit

var greeting = "Hello, playground"


func heron(a: Float, b: Float, c: Float) -> Float{
    
    
    let s = ((a + b + c) / 2)
    let answer = sqrtf(s*(s-a)*(s-b)*(s-c))

    return round(answer * 100) / 100
                         
}

                         print(heron(a: 8, b: 8, c: 8))
