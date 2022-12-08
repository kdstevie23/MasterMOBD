//
//  TableViewCell.swift
//  dogAPIproject
//
//  Created by Steven Newman on 12/7/22.
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

    
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var linkOutlet: UILabel!
    @IBOutlet weak var politicalPartyOutlet: UILabel!
    
    
    
    
    var people: People?
    
    init?(coder: NSCoder, people: People?)
    {
        self.people = people
        super.init(coder: coder?)
    }
    
    
    
    
    
    var name = people?.name
    {
        didSet {
            if oldValue != name {
                setNeedsUpdateConfiguration()
            }
        }
    }
    var state = people?.name
    {
        didSet {
            if oldValue != state {
                setNeedsUpdateConfiguration()
            }
        }
    }
    var party = people?.party
    {
        didSet {
            if oldValue != party {
                setNeedsUpdateConfiguration()
            }
        }
    }
    var link = people?.link
    {
        didSet {
            if oldValue != link {
                setNeedsUpdateConfiguration()
            }
        }
    }
    
    override func updateConfiguration(using theState: UICellConfigurationState) {
        var content = defaultContentConfiguration().updated(for: theState)
        
        
        nameOutlet.text = name
        linkOutlet.text = link
        politicalPartyOutlet.text = party
    }
    
    
    
    
    
    
    
}
