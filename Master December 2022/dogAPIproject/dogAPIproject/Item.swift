//
//  Item.swift
//  dogAPIproject
//
//  Created by Steven Newman on 12/6/22.
//

import Foundation



struct Item: Codable
{
    let message: String
    let status: Bool
    
    enum CodingKeys: String, CodingKey
    {
        case message = "trackName"
        case status = "true"
    }
    enum AdditionalKeys: String, CodingKey
    {
        case description = "shortDescription"
    }
    
    init(from decoder: Decoder) throws
    {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        //self.message = try container.decode(String.self, forKey: .message)
        self.status = try container .decode(Bool.self, forKey: .status)
            
            if let message = try? container.decode(String.self, forKey: .message) {
                self.message = message
        
        }
        else
        {
            
        let container = try decoder.container(keyedBy: AdditionalKeys.self)
        self.message = (try? container.decode(String.self, forKey: .description)) ?? ""
        }
    }
}



struct SearchResponse: Codable {
    let results: [Item]
}
