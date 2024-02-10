//
//  ContentView.swift
//  sample-movies-app-ios
//
//  Created by hossam on 01/02/2024.
//

import SwiftUI
struct MainView: View {
    
    
    init() {
        print("init!!")
        UITabBar.appearance().backgroundColor = UIColor.white
        
    }
    
    
    var body: some View {
        
        ZStack {
            TabView {
                HomeScreen()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                Text("Favourites Movies")
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Favourites")
                    }
            }.accentColor(.yellow)
            VStack {
                Spacer()
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 1)
                    .foregroundColor(.gray)
                    .padding(.bottom, 60)
            }
        }
        
        
    }
}



#Preview {
    MainView()
}
