//
//  MoviesController.swift
//  sample-movies-app-ios
//
//  Created by hossam on 17/02/2024.
//

import Foundation
import Alamofire
import SwiftyJSON

class MoviesController : ObservableObject {
     
    @Published var results: [MovieModel] = []

    
    let urlapi = "https://my-json-server.typicode.com/horizon-code-academy/fake-movies-api/movies"

    func getMovies(completion: @escaping ([MovieModel]?) -> Void) async {
        guard let url = URL(string: urlapi) else {
            completion(nil)
            return
        }
        
        // Automatic String to URL conversion, Swift concurrency support, and automatic retry.
        let response =  await AF.request(url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
               
            case .failure(let error):
                print(error)
            }
        }
        print(response)
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                completion(nil)
                return
            }
            
            do {
                let movies = try JSONDecoder().decode([MovieModel].self, from: data)
                DispatchQueue.main.async {
                    completion(movies)
                }
            } catch {
                print("Error decoding JSON: \(error.localizedDescription)")
                completion(nil)
            }
        }
        .resume()
    }
}
