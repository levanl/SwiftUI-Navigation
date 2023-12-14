//
//  TransportScreen.swift
//  Travel App
//
//  Created by Levan Loladze on 13.12.23.
//

import SwiftUI

// MARK: TransportScreenView
struct TransportScreen: View {
    var destination: Destination
    
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            List(destination.transportInfo, id: \.self) { transportType in
                TransportRow(transportType: transportType)
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
        .navigationTitle("Transport in \(destination.name)")
    }
}

// MARK: TransportRowView
struct TransportRow: View {
    var transportType: TransportType
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(transportType.name)
                .font(.headline)
            Text(transportType.description)
                .foregroundColor(.secondary)
        }
    }
}
