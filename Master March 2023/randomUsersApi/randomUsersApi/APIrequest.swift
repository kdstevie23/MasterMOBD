//
//  APIrequest.swift
//  randomUsersApi
//
//  Created by Steven Newman on 3/8/23.
//

import Foundation


//
//
//// Define the User struct to store the data
//
//var randomUserData = [RandomUserData]()
//
//// Define the URL for the API endpoint
//let url = URL(string: "https://randomuser.me/api/")!
//
//// Create a URLSession and data task
//let session = URLSession.shared
//let task = session.dataTask(with: url) { data, response, error in
//    // Check for errors and unwrap the data
//    guard let data = data, error == nil else {
//        print("Error: \(error?.localizedDescription ?? "Unknown error")")
//        return
//    }
//
//    // Decode the JSON data using a JSONDecoder
//    let decoder = JSONDecoder()
//    do {
//        let response = try decoder.decode(RandomUserData.self, from: data)
//        let user = RandomUserData.User
//        // Store the decoded data in the User struct
//        let newUser =
//        print(newUser)
//    } catch {
//        print("Error decoding JSON: \(error.localizedDescription)")
//    }
//
//    // Resume the data task inside the closure
//    task.resume()
//}


import Foundation
import UIKit

class RandomAPI {
    enum GetError: Error, LocalizedError {
        case failedToLoadData
    }
    
    class UserInfoController {
        
        func fetchRandomUser() async throws -> RandomUserData {
            
            let url = URL(string:  "https://randomuser.me/api")
            print()
            print()
            print(url!)
            
            let (data, response) = try await URLSession.shared.data(from: (url!))
      
            
            print(String(data: data, encoding: .utf8)!)
            
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                throw UserInfoController.RandomAPIError.userNotFound
            }
            
            let jsonDecoder = JSONDecoder()
            let decoded = try jsonDecoder.decode(RandomUserData.self, from: data)
            print("This info is the decode \(decoded)")
            return decoded
        }
        
        
        static func fetchImage(from url: URL) async throws -> UIImage {
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                throw UserInfoController.RandomAPIError.userNotFound
            }
            guard let image = UIImage(data: data) else {
                throw UserInfoController.RandomAPIError.userNotFound
            }
            return image
        }
        enum RandomAPIError: Error, LocalizedError {
            case userNotFound
        }
    }
}
