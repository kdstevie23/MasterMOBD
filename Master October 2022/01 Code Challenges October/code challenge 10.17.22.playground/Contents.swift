import UIKit

var greeting = "Hello, playground"



//
//
//var things = ["dog", "cat", "chicken", "dog", "dog"]
//
//
//
//
//func findingDups()
//{
//    let duplicates = Dictionary(grouping: things, by: {$0}).filter { $1.count > 1 }.keys
//    print(duplicates)
//}


func occurence(sentence: String) -> [String: Int] {
    let sentenceArray = sentence.split(separator: " ")
        var result: [String: Int] = [:]
        for word in sentenceArray {
            if result[String(word)] != nil {
                result[String(word)] = result[String(word)]! + 1
            } else {
                result[String(word)] = 1
            }
        }
return result
}

occurence(sentence: "test test test test test test test")
//func howManyTimes() {
//
//    var enumThings = things.enumerated()
//
//    for (index, words) in enumThings {
//        if words[0...count] == words[0...count] {
//            print(words)
//        }
//    }
//}
