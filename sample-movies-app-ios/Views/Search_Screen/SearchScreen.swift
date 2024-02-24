//
//  SearchScreen.swift
//  sample-movies-app-ios
//
//  Created by hossam on 24/02/2024.
//

import Foundation
import SwiftUI

struct SearchScreen: View {
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            Text("Searching for \(searchText)")
                .navigationTitle("Search for your favourite movie?")
        }
        .searchable(text: $searchText)
    }
}
