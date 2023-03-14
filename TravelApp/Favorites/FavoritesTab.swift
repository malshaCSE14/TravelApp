//
//  FavoritesTab.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct FavoritesTab: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .tabItem {
            Text("Favorites")
            Image(systemName: "heart.fill")
        }
    }
}
struct FavoritesTab_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesTab()
    }
}
