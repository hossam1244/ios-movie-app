//
//  MovieItemView.swift
//  sample-movies-app-ios
//
//  Created by hossam on 11/02/2024.
//

import SwiftUI


struct MovieItemView : View {
    
//    var movieModel : MovieModel
    
    var images = [
       "morty",
       "morty",
       "morty"
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image).resizable().scaledToFill()
                    
                }
            }
            .frame(height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Movie Name".uppercased())
                        .font(.system(size: 24, weight: .medium))
                        .baselineOffset(5)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                    Text("Movie Genre")
                        .font(.title2)
                        .fontWeight(.light)
                        .foregroundStyle(
                            Color(UIColor.gray)
                        )
                        .lineLimit(1)
                    
                    
                }
                Spacer()
                VStack {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("3.44")
                    }
                    Spacer()
                    Image(systemName: "heart").frame(alignment: .trailing)
                }
               
            }.padding()
        }

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
