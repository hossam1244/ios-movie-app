//
//  HomeScreen.swift
//  sample-movies-app-ios
//
//  Created by hossam on 10/02/2024.
//

import SwiftUI


struct MoviesScreen: View {
    
    
    let moviesList = [
        MovieModel(title: "NightCrawel", image: ""),
        MovieModel(title: "The GodFather", image: "")
       
    ]
    
    var body: some View {
        return VStack {
            List(moviesList) {movie in MovieItemView(movieModel: movie)}.background(Color.white)
        }.background(Color.white)
    }
  
}
