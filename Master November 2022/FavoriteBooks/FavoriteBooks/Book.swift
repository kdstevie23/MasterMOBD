import Foundation

struct Item: CustomStringConvertible {
    let title: String
    let author: String
    let genre: String
    let length: String
    
    var description: String {
        return "\(title) this is useless because i changed the names of everything \(author) but here it is \(genre) because it is in the \(length) book"
    }
}
