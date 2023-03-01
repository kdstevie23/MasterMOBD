import Foundation

class MovieAPIController {
    
    let baseURL = URL(string: "http://www.omdbapi.com/")!
    let apiKey = "ec4fe951"
    
    func fetchMovies(with searchTerm: String) async throws -> [APIMovie]
    {
        var searchURL = baseURL
        let searchItem = URLQueryItem(name: "s", value: searchTerm)
        let apiKeyItem = URLQueryItem(name: "apiKey", value: apiKey)
        searchURL.append(queryItems: [searchItem, apiKeyItem])
        let (data, _) = try await URLSession.shared.data(from: searchURL)
        let searchResponse = try JSONDecoder().decode(SearchResponse.self, from: data)
        return searchResponse.movies
    }
}
