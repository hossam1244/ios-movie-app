//
//  MovieModel.swift
//  sample-movies-app-ios
//
//  Created by hossam on 11/02/2024.
//

import Foundation


struct MovieModel : Identifiable {
    let id = UUID()
    let title: String
    let image: String
}
