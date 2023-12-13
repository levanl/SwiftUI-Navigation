//
//  DestinationDetailScreen.swift
//  Travel App
//
//  Created by Levan Loladze on 14.12.23.
//

import SwiftUI

struct DestinationDetailScreen: View {
    var destination: Destination
    
    @Binding var path: NavigationPath

    var body: some View {
        VStack {
            Text("Details for \(destination.name)")
                .font(.title)
            
            Image(destination.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: 300)
                .clipped()
                .padding(.horizontal, 0)
            
            HStack(spacing: 30) {
                NavigationLink(destination: TransportScreen(destination: destination, path: $path)) {
                    Text("Transport")
                        .padding(10)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                
                }
                
                NavigationLink(destination: MustSeeScreen(destination: destination, path: $path)) {
                    Text("Must See")
                        .padding(10)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                
                NavigationLink(destination: HotelsScreen(destination: destination, path: $path)) {
                    Text("Hotels")
                        .padding(10)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
            }
            
            Text("\(destination.description)")
                .padding()
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
    }
}

