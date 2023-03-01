//
//  dogInfoController.swift
//  dogAPIproject
//
//  Created by Steven Newman on 12/9/22.
//

import Foundation
import UIKit

class DogInfoController
{
    
    func fetchDogInfo() async throws -> DogInfo {
        
        var urlComponents = URLComponents(string: "https://dog.ceo/api/breeds/image/random")
        
        urlComponents!.queryItems = [ "message": "https://dog.ceo/api/breeds/image/random"
        ].map { URLQueryItem(name: $0.key, value: $0.value)}
                                      
        let (data, response) = try await URLSession.shared.data(from: (urlComponents?.url)!)
        
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw dogInfoError.itemNotFound
        }
        let decoder = JSONDecoder()
        let ddogInfo = try? decoder.decode(DogInfo.self, from: data)
        
        return ddogInfo!
    }
    
    enum dogInfoError: Error, LocalizedError {
        case itemNotFound
        case imageDataMissing
    }

    func fetchImage(from url: URL) async throws -> UIImage {
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw dogInfoError.imageDataMissing
        }
        
        guard let image = UIImage(data: data) else {
            throw dogInfoError.imageDataMissing
        }
        
        return image
    }
}
