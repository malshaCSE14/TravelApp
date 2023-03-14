//
//  HomeView.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct TravelAppView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeTab()
            }
            .tabItem {
                Text("Home")
                Image(systemName: "house")
            }
            .accentColor(.white)
            FavoritesTab()
            TripsTab()
            ProfileTab()
        }
    }
}

// MARK: -Preview
struct TravelAppView_Previews: PreviewProvider {
    static var previews: some View {
        TravelAppView()
    }
}

