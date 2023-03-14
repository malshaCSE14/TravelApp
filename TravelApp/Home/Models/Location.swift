//
//  Location.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-13.
//

import Foundation

struct Location: Identifiable, Decodable {
    let id: String
    let name: String
    let imageUrl: String
    let isFavorited: Bool
    
    init(
        id: String,
        name: String,
        imageUrl: String,
        isFavorited: Bool
    ) {
        self.id = id
        self.name = name
        self.imageUrl = imageUrl
        self.isFavorited = isFavorited
    }
}
