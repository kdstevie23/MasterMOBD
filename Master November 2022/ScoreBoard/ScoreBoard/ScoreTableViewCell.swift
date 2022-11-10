//
//  ScoreTableViewCell.swift
//  ScoreBoard
//
//  Created by Steven Newman on 11/9/22.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var PlayerNumberLabel: UILabel!
    @IBOutlet weak var PlayerScoreNumber: UILabel!
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
