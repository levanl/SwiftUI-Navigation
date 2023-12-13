//
//  MustSeeScreen.swift
//  Travel App
//
//  Created by Levan Loladze on 14.12.23.
//

import SwiftUI

struct MustSeeScreen: View {
    var destination: Destination
    
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            List(destination.mustSeeInfo, id: \.self) { mustSeeType in
                MustSeeRow(mustSeeType: mustSeeType)
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
        .navigationTitle("Must See in \(destination.name)")
    }
}

struct MustSeeRow: View {
    var mustSeeType: MustSeeType
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(mustSeeType.name)
                .font(.headline)
            Text(mustSeeType.description)
                .foregroundColor(.secondary)
        }
    }
}
