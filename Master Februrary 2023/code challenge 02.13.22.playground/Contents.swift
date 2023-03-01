import UIKit

var greeting = "Hello, playground"



func sorting(fileNamed: [String], extend: [String]) -> [String] {
    var fileName: [String]
    var exten: [String]
    
    //let both = "\(fileName)\(exten)"
    
    
    fileName = fileNamed
    exten = extend
//    init (fileName, exten)
//    fileName.self = fileName
//    exten.self = exten
    
    
    
    var isSameName = false
    var isSameExt = false
    var folderA1 = "F1A"
    var folderA2 = "F2A"
    var folderB1 = "F1B"
    var folderB2 = "F2B"
    
    
    
    
    func isTheSameName() {
        for index in 0...fileName.count {
            if fileName[index] == fileName[index] {
                isSameName = true
            }
        }
    }
    
    func isTheSameExt() {
        for index in 0...exten.count {
            if exten[index] == exten[index] {
                isSameExt = true
            }
        }
    }
    
    
    
    
    
    if isSameName == true {
            if isSameExt == true {
                fileName = ["\(folderA2) \(fileName) \(exten)"]
            } else {
                fileName = ["\(folderA1) \(fileName) \(exten)"]
        }
        
    } else if isSameName != true {
            
            if isSameExt == true {
                fileName = ["\(folderB2) \(fileName) \(exten)"]
                
            } else {
                fileName = ["\(folderB1) \(fileName) \(exten)"]
            }
        }
    return fileName
    }


sorting(fileNamed: ["stevie", "stevie"], extend: [".json", ".json"])
