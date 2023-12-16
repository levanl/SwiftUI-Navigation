//
//  MainScreenView.swift
//  Travel App
//
//  Created by Levan Loladze on 13.12.23.
//

import SwiftUI

struct MainScreenView: View {
    // MARK: Properties
    var destinations: [Destination] = DestinationService.getMockDestinations()
    
    var travelTips: [TravelTip] = TravelTipsService.getMockTravelTips()
    
    @State private var path = NavigationPath()
    
    @State private var showingAlert = false
    
    let columns = [
            GridItem(.adaptive(minimum: 80))
        ]
    
    // MARK: Body
    var body: some View {
        NavigationStack(path: $path) {
            List(destinations, id: \.self) { destination in
                NavigationLink(value: destination) {
                    VStack {
                        Image(destination.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity, maxHeight: 150)
                            .cornerRadius(8)
                        
                        Text(destination.name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.vertical, 5)
                }
                .buttonStyle(PlainButtonStyle())
                .listRowSeparator(.hidden)
                
            }
            .listStyle(.plain)
            
            .navigationTitle("Destinations")
            .navigationDestination(for: Destination.self) { destination in
                DestinationDetailScreen(destination: destination, path: $path)
            }
            
            Button("Travel Tips") {
                showingAlert = true
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(8)
            .alert(travelTips.randomElement()?.title ?? "", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            }
        }
    }
}

#Preview {
    MainScreenView()
}

