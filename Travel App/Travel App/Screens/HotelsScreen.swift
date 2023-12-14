//
//  HotelsScreen.swift
//  Travel App
//
//  Created by Levan Loladze on 14.12.23.
//

import SwiftUI

// MARK: HotelsScreenView
struct HotelsScreen: View {
    var destination: Destination
    
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            List(destination.hotelInfo, id: \.self) { hotelType in
                HotelRow(hotelType: hotelType)
            }
            
            NavigationLink(destination: MainScreenView()) {
                Button("Go to Main Screen") {
                    path = NavigationPath()
                }
                .padding(10)
                .foregroundColor(.black)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                )
            }
        }
        .navigationTitle("Hotels in \(destination.name)")
    }
}

// MARK: HotelsRowView
struct HotelRow: View {
    var hotelType: HotelType
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(hotelType.name)
                .font(.headline)
            Text(hotelType.description)
                .foregroundColor(.secondary)
        }
    }
}
