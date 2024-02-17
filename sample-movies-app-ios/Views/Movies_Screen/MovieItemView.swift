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
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                       .fill(.white)
                
            AsyncImage(url: URL(string: movieModel.image))
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

                   VStack {
                       Spacer()
                       Text(movieModel.title)
                           .font(.largeTitle)
                           .foregroundColor(.white)
                   }
                   .padding(20)
                   .multilineTextAlignment(.center)
               }
        .frame(width: 450, height: 200).padding(20)
    }
}
