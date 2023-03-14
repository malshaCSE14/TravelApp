//
//  LocationCell.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct LocationCell: View {
    var location: Location
    var body: some View {
        let width = (UIScreen.main.bounds.width / 2) - 40

        ZStack {
            Image(location.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: width)
                .cornerRadius(10)
                .shadow(color: Color.primary.opacity(0.3), radius: 1)
            
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.clear,
                    Color.clear,
                    Color.clear,
                    Color.black
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(10)

            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        print("Add to trip tapped")
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .font(Font.title.weight(.semibold))
                            .foregroundColor(.white)
                    }
                    .padding(10)
                }
                Spacer()
                HStack {
                    // TODO: Fix text truncate for `Anuradhapuraya`
                    Text(location.name)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding(.leading, 5)

                    Spacer()
                    Button {
                        print("Favorite tapped")
                    } label: {
                        let imageName = location.isFavorited ? "heart.fill" : "heart"
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: 19, height: 17)
                            .font(Font.title.weight(.medium))
                            .foregroundColor(.white)
                    }
                    .padding(5)

                }
                .padding(6)
            }
        }
    }
}
