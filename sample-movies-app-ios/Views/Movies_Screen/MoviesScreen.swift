//
//  HomeScreen.swift
//  sample-movies-app-ios
//
//  Created by hossam on 10/02/2024.
//

import SwiftUI


struct MoviesScreen: View {
    
    
    let moviesList = [
        MovieModel(title: "NightCrawel", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEJ18zuCQbgxLy5uqE3qwfJuBDMQQSS77ZMg&usqp=CAU"),
        MovieModel(title: "The GodFather", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEJ18zuCQbgxLy5uqE3qwfJuBDMQQSS77ZMg&usqp=CAU")
       
    ]
    
    var body: some View {
        List(moviesList) {movie in MovieItemView(movieModel: movie)}.padding(0)
    }
  
}
