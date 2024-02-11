//
//  MovieItemView.swift
//  sample-movies-app-ios
//
//  Created by hossam on 11/02/2024.
//

import SwiftUI


struct MovieItemView : View {
    
    var movieModel : MovieModel
    
    var body: some View {
        Text(movieModel.title)
    }
}
