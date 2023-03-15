//
//  LocationView.swift
//  TravelApp
//
//  Created by Malsha Hansini on 2023-03-12.
//

import SwiftUI

struct LocationView: View {
    
    var location: Location
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack {
                LocationImageView(location: location)
                LocationDescriptionView()
                SimilarAndNearbyPlacesButtonView()
                LocationGrid()
                Spacer()
            }
        }
    }
}

struct LocationImageView: View {
    var location: Location
    
    var body: some View {
        let width = UIScreen.main.bounds.width
        
        ZStack {
            Image(location.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width, height: 250.0)
                .clipped()
            LinearGradient(
                gradient: Gradient(colors: [Color.clear, Color.clear, Color.clear, Color.black]),
                startPoint: .top,
                endPoint: .bottom
            )
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        print("Add to trip tapped")
                    } label: {
                        ZStack {
                            Circle()
                                .fill(.black.opacity(0.5))
                                .frame(height: 40)
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .font(Font.title.weight(.bold))
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                }
                Spacer()
                HStack {
                    Text(location.name)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Button {
                        print("Favorite tapped")
                    } label: {
                        let imageName = location.isFavorited ? "heart.fill" : "heart"
                        
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: 22, height: 19)
                            .font(Font.title.weight(.semibold))
                            .foregroundColor(.white)
                    }
                    .padding(5)
                }
                .padding() // TODO: Fix Sigiri wall arts text
            }
        }
        .frame(width: width, height: 250.0)
        .edgesIgnoringSafeArea(.top)
    }
}

struct LocationDescriptionView: View {
    var body: some View {
        Text("This is a short multiline description about the location. This is a short multiline description about the location. This is a short multiline description about the location.")
            .foregroundColor(Color.gray)
            .font(.subheadline)
            .multilineTextAlignment(.leading)
            .lineLimit(3) // TODO: Expand view on tapping ...More
            .padding(.horizontal)
            .padding(.vertical, 7)
    }
}

struct SimilarAndNearbyPlacesButtonView: View {
    @State private var isSimilarPlacesButtonActive: Bool = true
    
    var body: some View {
        HStack {
            VStack {
                Button {
                    isSimilarPlacesButtonActive = true
                } label: {
                    Text("Similar Places")
                        .fontWeight(.bold)
                        .foregroundColor(isSimilarPlacesButtonActive ? .black : .gray)
                }
                .padding(.horizontal)
                Rectangle()
                    .fill(isSimilarPlacesButtonActive ? .green : .clear)
                    .frame(height: 2)
            }
            VStack {
                Button {
                    isSimilarPlacesButtonActive = false
                } label: {
                    Text("Nearby Places")
                        .fontWeight(.bold)
                        .foregroundColor(isSimilarPlacesButtonActive ? .gray : .black)
                }
                .padding(.horizontal)
                Rectangle()
                    .fill(isSimilarPlacesButtonActive ? .clear : .green)
                    .frame(height: 2)
            }
        }
    }
}
