//import UIKit
//
//var greeting = "Hello, playground"
//
////
///
///
///
var stringy = ["rock", "paper", "scissors"]

let random1 = stringy.randomElement()!
let random2 = stringy.randomElement()!



func rockPaperScissors(_ playerOne: String, _ playerTwo: String) -> String {
let playerOneWinsDict = ["rock": "scissors", "paper": "rock", "scissors": "paper"]
let playerTwoWinsDict = ["rock": "paper", "paper": "scissors", "scissors": "rock"]

guard playerOneWinsDict[playerOne.lowercased()] != nil, playerOneWinsDict[playerTwo.lowercased()] != nil else {
  return "invalid output"
}
if playerOneWinsDict[playerOne.lowercased()] == playerTwo.lowercased() {
    print("P1: \(playerOne.lowercased())")
    print("P2: \(playerTwo.lowercased())")
  return "Player one wins!"
}
if playerTwoWinsDict[playerOne.lowercased()] == playerTwo.lowercased() {
    print("P1: \(playerOne.lowercased())")
    print("P2: \(playerTwo.lowercased())")
  return "Player two wins!"
}
return "\(random1) : \(random2) - It's a draw!"
}





print(rockPaperScissors(random1,random2))



//var strings = ["Rock", "Paper", "Scizzors"]
//
//        var one = strings.randomElement()
//        var two = strings.randomElement()
//
//
//    if one == two {
//        print(one!)
//        print(two!)
//        print("RESPINNING")
//        let one = strings.randomElement()
//        let two = strings.randomElement()
//
//
//    } else if one! == "Rock" && two! == "Paper" || two! == "Rock" && one! == "Paper" {
//        print(one!)
//        print(two!)
//        print("PAPER WINS")
//
//
//    } else if one! == "Rock" && two! == "Scizzors" || two! == "Rock" && one! == "Scizzors" {
//        print(one!)
//        print(two!)
//        print("ROCK Wins!")
//
//
//    } else if one! == "Paper" && two! == "Scizzors" || two! == "Paper" && one! == "Scizzors" {
//        print(one!)
//        print(two!)
//        print("Scizzors Wins!")
//    }
//



// }
//
//determiningWinner()
//
////
////struct RockPaperScizzors: Equatable {
////    static func go(lhs: String, rhs: String) -> String {
////        switch lhs.lowercased() {
////        case "rock" :
////            switch rhs {
////            case "rock":
////                return "Its a tie"
////            case "paper":
////                return "paper wins"
////            case "scizzors" :
////                return "rock wins"
////            }
////            break
////
////
////
////        case "paper" :
////            switch rhs {
////            case "rock":
////                return "Paper wins!"
////            case "paper":
////                return "its a tie"
////            case "scizzors" :
////                return "Scizzors Wins"
////                break
////
////
////
////            case "scizzors"
////                switch rhs {
////                case "rock":
////                    return "Rock Wins"
////                case "paper":
////                    return "Scizzors Wins"
////                case "scizzors" :
////                    return "Its a tie"
////                default:
////                    return "LHS INVALID INPUT: `\(rhs)`"
////                    break
////            default:
////                    return "LHS INVALID INPUT: `\(lhs)`"
////                }
////            }
////        }
////    }
