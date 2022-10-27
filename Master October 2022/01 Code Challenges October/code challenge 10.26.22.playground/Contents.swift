import UIKit



func lol(_ num: Int) -> Double
{
    return (1...num).map(Double.init).reduce(1.0, *)
}
    


print(lol(5))
