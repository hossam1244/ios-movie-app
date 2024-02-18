//
//  HomeScreen.swift
//  sample-movies-app-ios
//
//  Created by hossam on 10/02/2024.
//

import SwiftUI


struct MoviesScreen: View {
    
    @State var results = [MovieModel]()

//    
//    let moviesList = [
//        MovieModel(title: "NightCrawel", poster: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEJ18zuCQbgxLy5uqE3qwfJuBDMQQSS77ZMg&usqp=CAU"),
//        MovieModel(title: "The GodFather", poster: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEJ18zuCQbgxLy5uqE3qwfJuBDMQQSS77ZMg&usqp=CAU")
//       
//    ]
    
    func fetchMovies() {
        
    }
    
    var body: some View {
        VStack{
            VStack{
                ForEach(results, id: \.Title) { result in
                    MovieItemView(movieModel: result)
                }
            }
            
        }.onAppear()  {
            Task {
                await MoviesController().getMovies { (results) in
                    self.results = results ?? []
                }
            }
           
        }
        
//        List(moviesList) {movie in MovieItemView(movieModel: movie)}.padding(0)
    }
  
}
