//
//  ProfileTab.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct ProfileTab: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .tabItem {
            Text("Profile")
            Image(systemName: "person")
        }
    }
}

struct ProfileTab_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTab()
    }
}
