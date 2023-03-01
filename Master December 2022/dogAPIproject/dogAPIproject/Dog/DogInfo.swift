//
//  Item.swift
//  dogAPIproject
//
//  Created by Steven Newman on 12/6/22.
//

import Foundation



struct DogInfo: Codable
{
    var image: URL
    
    enum CodingKeys: String, CodingKey {
        case image = "message"
    }
}
