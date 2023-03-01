//
//  TableViewCell.swift
//  tableViewRandomizerApp
//
//  Created by Steven Newman on 3/1/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var userOutlet: UILabel!
}
