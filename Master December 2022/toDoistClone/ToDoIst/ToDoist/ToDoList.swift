

import Foundation

extension ToDoList {
    
    var itemsArray: [Item] {
        let array = items?.allObjects as? [Item]
        return array ?? []
    }
    
}
