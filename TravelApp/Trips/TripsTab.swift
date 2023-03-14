//
//  TripsTab.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct TripsTab: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .tabItem {
            Text("Trips")
            Image(systemName: "map")
        }
    }
}

struct TripsTab_Previews: PreviewProvider {
    static var previews: some View {
        TripsTab()
    }
}
