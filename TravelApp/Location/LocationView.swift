//
//  LocationView.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("location-6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250.0)
                    .edgesIgnoringSafeArea(.top)
                LinearGradient(
                    gradient: Gradient(colors: [Color.clear, Color.clear, Color.clear, Color.black]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .frame(height: 250.0)
                .edgesIgnoringSafeArea(.top)
            }
            Spacer()
        }
        .tabItem {
            Text("Home")
            Image(systemName: "house")
        }
    }
}

// MARK: -Preview
struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
