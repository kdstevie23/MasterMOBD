import UIKit

struct PhotoInfo: Codable {
    //This struct is used in 'JSON USAGE 3' as the type the decoder uses as an output
    
    var title: String
    var description: String
    var url: URL
    var copyright: String?
    var mediaType: String
    
    //Used in encoding and decoding to map keys (like from JSON) to property names.  Use this when your property names do not exactly match the keys in the incoming JSON (or other codable format).
    enum CodingKeys: String, CodingKey {
        case title
        case description = "explanation"
        case url
        case copyright
        case mediaType = "media_type"
    }
}

enum PhotoInfoError: Error, LocalizedError {
    //Used as a custom thrown error in the fetchPhotoInfo function below. You should use errors like this any time a condition is met that should stop execution of your function.
    case itemNotFound
}

func fetchPhotoInfo() async throws -> PhotoInfo {
    //This function signiture sports 2 key words:
    //'async' notes this function could potentially start an asyncronous or background process.  We can see the function that triggers this asyncronous process below as noted by the 'await' keyword.
    //'throws' notes this function could potentially throw an error.  We can see 2 functions below that could throw an error.  They are both noted using the 'try' keyword.  We can also see a custom error thrown in the guard's else near the bottom of the function.  Any error thrown inside this function (including inside the functions marked with try) will be thrown to the caller and should be handled (usually with a do/catch).
    
    var urlComponents = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
    urlComponents.queryItems = [
        "api_key": "DEMO_KEY",
        "date": "2013-07-16"
    ].map { URLQueryItem(name: $0.key, value: $0.value) }
    
    let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
    
    //JSON USAGE 1 - This chunk converts the data into a String.  That string can then be used to help you debug or set up your data objects
    //    if let httpResponse = response as? HTTPURLResponse,
    //       httpResponse.statusCode == 200,
    //       let string = String(data: data, encoding: .utf8) {
    //        print(string)
    //    }
    
    
    //JSON USAGE 2 - This chunk uses a JSONDecoder to decode the data into a [String: String] (you should typically use Codalbe data objects instead of dictionaries...but this is an option)
    //    if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let photoDictionary = try? JSONDecoder().decode([String: String].self, from: data) {
    //        print(photoDictionary)
    //    }
    
    
    //JSON USAGE 3 - Use a JSONDecoder to decode data into the struct defined above.  This is incredably useful when implementing web services in your apps. If your defined Swift structs/classes match the data structure of the incoming JSON then Swift libraries take care of the majority of the work.
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        throw PhotoInfoError.itemNotFound
    }
    
    let photoInfoObject = try JSONDecoder().decode(PhotoInfo.self, from: data)
    return photoInfoObject
}

Task {
    //Task is used to run asyncronous code in a syncronous context.  As usually anything created inside these curly brackets (in this scope) will not be available outside the curlys (outside this scope).
    
    //A do/catch like this can be used to handle thrown errors.  Note there is an 'error' parameter available in the catch scope that can be used to print or otherwise handle the specific error that was thrown.
    do {
        let photoInfo = try await fetchPhotoInfo()
        print("It worked!")
        print(photoInfo)
    } catch {
        print(error.localizedDescription)
    }
}
