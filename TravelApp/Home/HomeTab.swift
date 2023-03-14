//
//  HomeTab.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct HomeTab: View {
    var body: some View {
        VStack {
            SearchBar()
            TripsGrid()
            LocationGrid()
            Spacer()
        }
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
