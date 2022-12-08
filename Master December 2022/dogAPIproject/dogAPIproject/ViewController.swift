//
//  ViewController.swift
//  dogAPIproject
//
//  Created by Steven Newman on 12/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    enum ItemError: Error, LocalizedError {
        case itemsNotFound
        case imageDataMissing
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func fetchDogInfo(matching query: [String: String]) async throws -> [Item] {
        var urlComponents = URLComponents(string: "https://dog.ceo/api/breeds/image/random")!
        urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        
        let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw ItemError.itemsNotFound
        }
        
        let decoder = JSONDecoder()
        let searchResponse = try decoder.decode(SearchResponse.self, from: data)

        return searchResponse.results
    }
    
    
    func fetchImage(from url: URL) async throws -> UIImage {
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw ItemError.imageDataMissing
        }

        guard let image = UIImage(data: data) else {
            throw ItemError.imageDataMissing
        }
        
        return image
    }
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBAction func buttonPressed(_ sender: UIButton) {
        Task {
//            let response = try await fetchDogInfo()
//            let image = try await
        }
       
    }
}

