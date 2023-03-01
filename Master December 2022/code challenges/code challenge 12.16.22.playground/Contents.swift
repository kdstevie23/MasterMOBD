import UIKit

var greeting = "Hello, playground"




// Equations to work with

// Since chickens have 1 head and cows have 1 head
// chickens + cows = heads

// Since chickens have 2 legs and cows have 4 legs:
// 2(chickens) + 4(cows) = legs

// Given that we are given the amount of heads and legs:
// chickens = heads - cows  <-- rewriting first equation
// Then
// 2(heads - cows) + 4(cows) = legs   <-- Substitute chickens
// 2(heads) - 2(cows) + 4(cows) = legs
// 2(heads) + 2(cows) = legs
// 2(cows) = legs - 2(heads)
// cows = (legs - 2(heads)) / 2

// We can then solve for chickens with:
// chickens = heads - cows


//Expected Input --> [Heads, Legs]
func chickensAndCows(arr: [Int]) -> [Int]? {
    if arr[0] == 0 && arr[1] == 0 {
        return [0, 0]
    } else if arr[0] < 0 || arr[1] < 0 {
        return nil
    }

    let cows = Double(arr[1] - 2 * arr[0]) / 2
    let chickens = Double(arr[0]) - cows

    // Check that we have an even amount of cows and chickens
    if cows.remainder(dividingBy: 1) > 0 || chickens.remainder(dividingBy: 1) > 0 {
        return nil
    }

    return [Int(chickens), Int(cows)]
}
