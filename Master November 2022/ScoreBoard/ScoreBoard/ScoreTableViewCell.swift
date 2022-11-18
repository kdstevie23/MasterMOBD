//
//  ScoreTableViewCell.swift
//  ScoreBoard
//
//  Created by Steven Newman on 11/9/22.
//

import UIKit


protocol CellSort {
    func sortingCell(stepper: Int, row: Int)
    
}



class ScoreTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var delegate: CellSort?
    var row: Int?
    
    
    @IBOutlet weak var StepperValueOutlet: UIStepper!
    @IBOutlet weak var cellImage: UIImageView!
    
    @IBAction func cellStepper(_ sender: UIStepper) {
        
        
        var num = StepperValueOutlet.value
        
        delegate?.sortingCell(stepper: Int(StepperValueOutlet.value), row: row!)
        scoreNumberCellOutlet.text = String(num)
        
        
        
        
        
    }
    
    @IBOutlet weak var nameCellOutlet: UILabel!
    @IBOutlet weak var scoreNumberCellOutlet: UILabel!
    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
