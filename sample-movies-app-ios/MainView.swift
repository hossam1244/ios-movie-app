//
//  ContentView.swift
//  sample-movies-app-ios
//
//  Created by hossam on 01/02/2024.
//

import SwiftUI
struct MainView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "popcorn.circle.fill")
                    Text("Home")
                }
            Text("Favourites Movies")
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favourites")
                }
        }
    }
}



#Preview {
    MainView()
}
