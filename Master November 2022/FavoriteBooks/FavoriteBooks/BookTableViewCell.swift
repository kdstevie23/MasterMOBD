
import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var genreLabel: UILabel!
    @IBOutlet var lengthLabel: UILabel!
    
    func update(with item: Item) {
        titleLabel.text = item.title
        authorLabel.text = item.author
        genreLabel.text = item.genre
        lengthLabel.text = item.length
    }
}
