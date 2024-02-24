//
//  MovieItemView.swift
//  sample-movies-app-ios
//
//  Created by hossam on 11/02/2024.
//

import SwiftUI


struct MovieItemView : View {
    
//    var movieModel : MovieModel
    
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text("Movie Name")
                Text("Movie Genre")
    
            }
            Spacer()
            HStack(spacing: 2) {
                Image(systemName: "star.fill")
                Text("3.44")
            }
            
           
        }.padding()
        
//        ZStack {
//            RoundedRectangle(cornerRadius: 25, style: .continuous)
//                       .fill(.white)
//                
//            AsyncImage(url: URL(string: movieModel.Poster))
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
//
//                   VStack {
//                       Spacer()
//                       Text(movieModel.Title)
//                           .font(.largeTitle)
//                           .foregroundColor(.white)
//                   }
//                   .padding(20)
//                   .multilineTextAlignment(.center)
//               }
//        .frame(width: 450, height: 200).padding(20)
    }
}

#Preview {
    MovieItemView()
}
