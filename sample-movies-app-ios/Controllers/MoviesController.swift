//
//  MoviesController.swift
//  sample-movies-app-ios
//
//  Created by hossam on 17/02/2024.
//

import Foundation

class MoviesController : ObservableObject{
    
    @Published var results : [MovieModel] = []
    
    let urlapi = "https://jsonplaceholder.typicode.com/users"
    
    func getMovies(completion:@escaping ([MovieModel]) -> ()) {
        guard let url = URL(string: urlapi) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let users = try! JSONDecoder().decode([MovieModel].self, from: data!)
            print(users)
            
            DispatchQueue.main.async {
                completion(users)
            }
        }
        .resume()
    }
}
