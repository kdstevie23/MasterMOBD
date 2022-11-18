//
//  TableViewCell.swift
//  familyProject
//
//  Created by Steven Newman on 11/18/22.
//

import UIKit



class TableViewCell: UITableViewCell {
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func update(with name: People) {
        nameCellOutlet.text = name.name
    }

    
    
   
    
    
    
    
    
    @IBOutlet weak var nameCellOutlet: UILabel!
//    nameCellOutlet.text = test
}
