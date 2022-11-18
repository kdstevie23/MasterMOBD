//
//  SB.swift
//  ScoreBoard
//
//  Created by Steven Newman on 11/15/22.
//

import Foundation
import UIKit



struct Player: Comparable {
    var playerName: String
    var currentScore: Int
    //var profilePic: UIImage
    
    
    
    static func < (lhs: Player, rhs: Player) -> Bool {
        return lhs.currentScore > rhs.currentScore
    }
}
