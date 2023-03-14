//
//  LocationGrid.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct LocationGrid: View {
    var body: some View {
        // TODO: Do lazy loading
        ScrollView {
            let gridLayout: [GridItem] = [GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10)]

            let locations = [
                Location(id: "1", name: "Ravana Falls", imageUrl: "location-1", isFavorited: true),
                Location(id: "2", name: "Idalgashinna", imageUrl: "location-2", isFavorited: false),
                Location(id: "3", name: "Ambuluwawa", imageUrl: "location-3", isFavorited: false),
                Location(id: "4", name: "Kumana Bird Sanctuary", imageUrl: "location-4", isFavorited: false),
                Location(id: "5", name: "Dondra Lighthouse", imageUrl: "location-5", isFavorited: true),
                Location(id: "6", name: "Anuradhapuraya", imageUrl: "location-6", isFavorited: true),
                Location(id: "7", name: "Watawala", imageUrl: "location-7", isFavorited: false),
                Location(id: "8", name: "Sinharaja Forest", imageUrl: "location-8", isFavorited: false),
                Location(id: "9", name: "9 arch bridge)", imageUrl: "location-9", isFavorited: false),
                Location(id: "10", name: "Wilpaththu", imageUrl: "location-10", isFavorited: false),
                Location(id: "11", name: "Sigiriya", imageUrl: "location-11", isFavorited: true),
                Location(id: "12", name: "Peradeniya", imageUrl: "location-12", isFavorited: true),
                Location(id: "13", name: "Pinnawala Elephant Orphanage", imageUrl: "location-13", isFavorited: true),
                Location(id: "14", name: "Bundala", imageUrl: "location-14", isFavorited: false),
                Location(id: "15", name: "Udawalawa", imageUrl: "location-15", isFavorited: false),
                Location(id: "16", name: "Yala", imageUrl: "location-16", isFavorited: false),
                Location(id: "17", name: "Bundala", imageUrl: "location-17", isFavorited: false),
                Location(id: "18", name: "Sigiri Wall Arts", imageUrl: "location-18", isFavorited: true),
                Location(id: "19", name: "Mirissa", imageUrl: "location-19", isFavorited: true)
            ]
            
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 11) {
                ForEach(locations.indices, id: \.self) { index in
                    NavigationLink {
                        LocationView(location: locations[index])
                    } label: {
                        LocationCell(location: locations[index])
                    }
                    // TODO: Hide the location view navigation bar
                }
            }
            .padding(.all, 10)
        }
    }
}

struct LocationGrid_Previews: PreviewProvider {
    static var previews: some View {
        LocationGrid()
            .previewLayout(.sizeThatFits)
    }
}
