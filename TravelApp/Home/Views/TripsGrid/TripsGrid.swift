//
//  TripsGrid.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct TripsGrid: View {
    var body: some View {
        Divider()
        // TODO: Do lazy loading
        HStack {
            Text("Plan your trip").padding(.leading)
                .font(.callout)
                .foregroundColor(.gray)
            Spacer()
            Button {
                print("See all tapped")
            } label: {
                Text("See All").padding(.trailing, 12)
                    .font(.callout)
                    .foregroundColor(.blue)
            }
        }
        ScrollViewReader { proxy in
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(0..<4) { index in
                        TripGalleryIconView(index: index)
                    }
                    Button {
                        print("Add new trip tapped")
                    } label: {
                        VStack {
                            Image(systemName: "plus.rectangle.fill")
                                .resizable()
                                .frame(width: 80, height: 60)
                                .foregroundColor(.gray)
                            Text(" ")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        // TODO: Set proper gray color
                    }
                }
            }
            .onAppear {
                // TODO: Scroll to last element
                proxy.scrollTo(0)
            }
            .padding(.horizontal, 12)
        }
        .padding(.bottom, 5)
        Divider()
    }
}

struct TripsGrid_Previews: PreviewProvider {
    static var previews: some View {
        TripsGrid()
    }
}
