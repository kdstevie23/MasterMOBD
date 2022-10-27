import UIKit

var greeting = "Hello, playground"



struct Note: Codable {
    let title: String
    let text: String
    let timestamp: Date
}

let newNote = Note(title: "Grocery run", text: "Pick up mayonnaise, mustard, lettuce, tomato, and pickles.",
   timestamp: Date())

let propertyListEncoder = PropertyListEncoder()
if let encodedNote = try? propertyListEncoder.encode(newNote) {
    print(encodedNote)
    
    let propertyListDecoder = PropertyListDecoder()
    
    
    
    
    
    
    if let decodedNote = try?
       propertyListDecoder.decode(Note.self, from: encodedNote) {
        print(decodedNote)
    }
}
