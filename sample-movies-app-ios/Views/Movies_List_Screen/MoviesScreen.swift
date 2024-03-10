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
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                LazyVStack(spacing: 10) {
                    ForEach (0 ... 10, id: \.self) { listing in
                       MovieItemView()
                    
                    }
                }
            }
        }.padding()
    }
  
}
