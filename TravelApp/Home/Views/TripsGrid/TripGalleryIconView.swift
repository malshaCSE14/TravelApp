//
//  TripGalleryIconView.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct TripGalleryIconView: View {
    let index: Int
    var body: some View {
        VStack {
            Text("Item \(index)")
                .foregroundColor(.white)
                .frame(width: 80, height: 60)
                .background(.red)
                .cornerRadius(10)
            Text("Trip \(index)")
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

struct TripGalleryIconView_Previews: PreviewProvider {
    static var previews: some View {
        TripGalleryIconView(index: 1)
    }
}
