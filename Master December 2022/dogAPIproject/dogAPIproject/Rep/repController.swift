//
//  repController.swift
//  dogAPIproject
//
//  Created by Steven Newman on 12/9/22.
//

import Foundation


class repController {
    
 
    func fetchRepInfo(zipCode: [String: String]) async throws -> [People] {
        
        var urlComponents = URLComponents(string: "https://whoismyrepresentative.com/getall_mems.php")
        urlComponents?.queryItems = zipCode.map { URLQueryItem(name: $0.key, value: $0.value) }
        
        let (data, response) = try await URLSession.shared.data(from: (urlComponents!.url!))
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw RepInfoError.itemNotFound
        }
        let jsonDecoder = JSONDecoder()
        let repInfo = try jsonDecoder.decode(Results.self, from: data)
        return repInfo.results
    }
    
    
    
    enum RepInfoError: Error, LocalizedError {
        case itemNotFound
    }
}
