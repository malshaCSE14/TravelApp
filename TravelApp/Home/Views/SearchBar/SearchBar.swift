//
//  SearchBar.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
            // TODO: Add the app icon or remove the entire image
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .fontWeight(.bold)
                .padding([.leading], 2)
            Text("Where do you wanna travel?")
                .foregroundColor(Color.searchBarTextGray)// TODO:  Make the text field searchable, editable
                .font(.callout)
            Spacer()
        }
        .padding(8)
        .background(Color.searchBarGray) // TODO: Change the color
        .cornerRadius(10.0)
        .padding([.top, .horizontal])
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
