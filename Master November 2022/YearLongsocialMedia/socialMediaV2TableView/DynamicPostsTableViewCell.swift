//
//  DynamicPostsTableViewCell.swift
//  socialMediaV2TableView
//
//  Created by Steven Newman on 11/16/22.
//

import UIKit

class DynamicPostsTableViewCell: UITableViewCell {


    
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
