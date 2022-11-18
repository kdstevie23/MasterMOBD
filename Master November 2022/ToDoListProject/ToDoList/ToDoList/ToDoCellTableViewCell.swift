//
//  ToDoCellTableViewCell.swift
//  ToDoList
//
//  Created by Steven Newman on 11/16/22.
//

import UIKit

protocol ToDoCellDelegate: AnyObject {
    func checkmarkTapped(sender: ToDoCellTableViewCell)
}

class ToDoCellTableViewCell: UITableViewCell {

    
    weak var delegate: ToDoCellDelegate?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!

    @IBAction func completeButtonIsTapped(_ sender: Any) {
        delegate?.checkmarkTapped(sender: self)
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
