

import Foundation

extension Item {
    
    static let entityName = "Item"

    // Computed
    
    var createdAtDate: Date {
        createdAt ?? Date.distantPast
    }
    var isCompleted: Bool {
        completedAt != nil
    }
    var subtitle: String {
        if isCompleted, let completedAtString {
            return completedAtString
        }
        return createdAtString
    }
    var sortDate: Date {
        if isCompleted, let completedAt {
            return completedAt
        }
        return createdAtDate
    }
    var createdAtString: String {
        Item.relativeDateFormatter.localizedString(for: createdAtDate, relativeTo: Date())
    }
    var completedAtString: String? {
        guard let completedAt else { return nil }
        return Item.relativeDateFormatter.localizedString(for: completedAt, relativeTo: Date())
    }
    
}


// MARK: - Date Formatter

extension Item {
    
    static var relativeDateFormatter: RelativeDateTimeFormatter = {
        let formatter = RelativeDateTimeFormatter()
        formatter.dateTimeStyle = .named
        formatter.unitsStyle = .abbreviated
        formatter.formattingContext = .beginningOfSentence
        return formatter
    }()

}
