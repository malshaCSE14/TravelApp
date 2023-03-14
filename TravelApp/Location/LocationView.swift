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
        let width = UIScreen.main.bounds.width
        
        ScrollView(.vertical) {
            VStack {
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
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .font(Font.title.weight(.semibold))
                                    .foregroundColor(.white)
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
                                    .frame(width: 19, height: 17)
                                    .font(Font.title.weight(.medium))
                                    .foregroundColor(.white)
                            }
                            .padding(5)
                        }
                        .padding() // TODO: Fix Sigiri wall arts text
                    }
                }
                .frame(width: width, height: 250.0)
                .edgesIgnoringSafeArea(.top)
                Text("This is a short multiline description about the location. This is a short multiline description about the location. This is a short multiline description about the location.")
                    .foregroundColor(Color.gray)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3) // TODO: Expand view on tapping ...More
                    .padding()
                HStack {
                    Button {
                        print("Go to similar Places")
                    } label: {
                        Text("Similar Places")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                    Spacer()
                    Button {
                        print("Go to nearby Places")
                    } label: {
                        Text("Nearby Places")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
                }
                Spacer()
            }
        }
    }
}
