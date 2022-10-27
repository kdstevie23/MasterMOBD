import UIKit

var greeting = "Hello, playground"


//struct Ballcount: Codable {
struct Ballcount{
    //Encodable: Data Objext -> JSON
    //Decodable: JSON -> Data Object
    var hr: Int
    var fiveMin: Int
    var min: Int
    
// var type: MaterialType
}

// enum MaterialType: Codable
//  case metal
//  case plastic
//}

let currentBallCount = BallCount(hr: 8, fiveMin: 8, min: 0)\
// MARK: - 0 Encoding an object (swift
// 1. Convert your data to JSON
// 1.1 Create some sort of encoder (JSON Encoder
let encoder = JSONEncoder()
// 1.2 encode your onject


//Notes:
//do {
// 'try? returns nil when an error is thrown. Object returned will be optional: 'let object: Data?"
// 'try! crash if an error is thrown. But the object returned isnt optional: 'let object: Data;'
// 'try needs to be inside of a 'do { } block'

do {
    let object = try encoder.encode(currentBallCount)
    //try? returns nil when an error is thrown
    //let Object: Data?
    // 'try' needs to br inside of a do statement
    
//} catch {
//    print(error)
//}
    
// 2. Save data to a file
    //2.1
    let documentsDirectory = FileManager.default.urls(for: documentsDirectory, in: userDomainMask).first!
// 2.2
    let saveFileURL = documentsDirectory.appendingPathComponent("BallCountData").appendingPathExtension("json")
// 2.3
    try! dataObject.write(to: saveFileUrl)
    
    
// Data is saved to file
    
    // MARK: - Decpdomg an object 
    
    
// Mark: - Decoding
    
    
    
//func encode<T>(_ value: T) throws -> Data where T : Encodable
