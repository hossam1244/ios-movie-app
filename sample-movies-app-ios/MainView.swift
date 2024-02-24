//
//  ContentView.swift
//  sample-movies-app-ios
//
//  Created by hossam on 01/02/2024.
//

import SwiftUI
import BottomBar_SwiftUI

struct MainView: View {
    
    @State private var selectedIndex: Int = 0
    
    let items: [BottomBarItem] = [
        BottomBarItem(icon: "house.fill", title: "Home", color: .purple),
        BottomBarItem(icon: "magnifyingglass", title: "Search", color: .orange),
        BottomBarItem(icon: "heart", title: "Favourites", color: .pink)
    ]
    
    
    
    
    var selectedItem: BottomBarItem {
        items[selectedIndex]
    }
    
    
    init() {
        print("init!!")
        UITabBar.appearance().backgroundColor = UIColor.white
        
    }
    
    
    var body: some View {
            NavigationView {
                VStack {
                    TabView(selection: $selectedIndex) {
                                MoviesScreen()
                                .tag(0)
                                SearchScreen()
                                .tag(1)
                                Text("Favourites")
                                .tag(2)
                            }
                    BottomBar(selectedIndex: $selectedIndex, items: items)
                }
            }
        
        
    }
}



#Preview {
    MainView()
}
