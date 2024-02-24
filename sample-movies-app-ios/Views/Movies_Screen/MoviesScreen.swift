//
//  HomeScreen.swift
//  sample-movies-app-ios
//
//  Created by hossam on 10/02/2024.
//

import SwiftUI


struct MoviesScreen: View {
    
    @State var results = [MovieModel]()


    var body: some View {
        VStack{
            VStack{
                ForEach(results, id: \.Title) { result in
                    MovieItemView(movieModel: result)
                }
            }
            
        }.onAppear()  {
            Task {
                await MoviesViewModel().getMovies { (results) in
                    self.results = results ?? []
                }
            }
           
        }
        
    }
  
}
