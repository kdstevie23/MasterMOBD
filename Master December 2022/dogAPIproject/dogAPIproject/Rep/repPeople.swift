//
//  personas.swift
//  dogAPIproject
//
//  Created by Steven Newman on 12/7/22.
//

import Foundation


struct Results: Codable {
    var results: [People]
}

struct People: Codable {
    let name: String
    var party: String
    var state: String
    var link: String
    

    }
    
    
    
    
    
    
    
    
    
    
//
//    enum AdditionalKeys: String, CodingKey {
//        case district = "1"
//        case phone = "1800-im-stoopid"
//        case office = "12th on 5th street"
//    }
//    
//    init(from decoder: Decoder) throws
//    {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.party = try container.decode(String.self, forKey: .party)
//        self.state = try container.decode(String.self, forKey: .state)
//        self.link = try  container.decode(URL.self, forKey: .link)
//        self.zip = try container.decode(String.self, forKey: .zip)
//    }

        
        
//        self.district = try container.decode(Int.self, forKey: .district)
//        self.phone = try container.decode(String.self, forKey: .phone)
//        self.office = try container.decode(String.self, forKey: .office)
//        if let district = try? container.decode(String.self, forKey: .district) {
//            self.district = description
//        } else
//        {
//            let container = try decoder.container(keyedBy: AdditionalKeys.self)
//            self.description = (try? container.decode(String.self, forKey: .description)) ?? ""
//        }
