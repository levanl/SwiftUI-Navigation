//
//  MockNetworking.swift
//  Travel App
//
//  Created by Levan Loladze on 13.12.23.
//

import Foundation

class DestinationService {
    static func getMockDestinations() -> [Destination] {
        let mockJSON = """
        [
            {
                "id": "1",
                "name": "Bali",
                "imageName": "Bali",
                "description": "Beautiful island in Indonesia.",
                "transportInfo": [
                    {"name": "Airplane", "description": "Fly to Ngurah Rai International Airport."},
                    {"name": "Taxi", "description": "Use taxis for local transport."},
                    {"name": "Rental Car", "description": "Rent Cars for transportation."}
                ],
                "mustSeeInfo": [
                    {"name": "Ubud", "description": "Visit the cultural heart of Bali."},
                    {"name": "Tanah Lot", "description": "See the iconic sea temple."},
                ],
                "hotelInfo": [
                    {"name": "Luxury Resort", "description": "Experience world-class luxury."},
                    {"name": "Budget Hotel", "description": "Affordable accommodation for every traveler."}
                ]
        
            },
            {
                "id": "2",
                "name": "San Francisco",
                "imageName": "SF",
                "description": "Iconic city in California, USA.",
                "transportInfo": [
                    {"name": "Airplane", "description": "Fly to San Francisco International Airport."},
                    {"name": "Taxi", "description": "Use taxis for local transport."}
                ],
                "mustSeeInfo": [
                    {"name": "Golden Gate Park", "description": "Visit Golden Gate Park"},
                    {"name": "Coit Tower", "description": "Visit Coit Tower"},
                ],
                "hotelInfo": [
                    {"name": "Luxury Resort", "description": "Experience world-class luxury."},
                    {"name": "Budget Hotel", "description": "Affordable accommodation for every traveler."}
                ]
            },
            {
                "id": "3",
                "name": "Tbilisi",
                "imageName": "Tbilisi",
                "description": "Charming capital of Georgia.",
                "transportInfo": [
                    {"name": "Airplane", "description": "Fly to Tbilisi Airport "},
                    {"name": "Taxi", "description": "Use taxis for local transport."},
                    {"name": "Horse", "description": "Ride Horse for transportation."}
                ],
                "mustSeeInfo": [
                    {"name": "Old Tbilisi", "description": " AMAZING "},
                    {"name": "Mtatsminda", "description": " AMAZING "},
                ],
                "hotelInfo": [
                    {"name": "Redison", "description": "Experience world-class luxury."},
                    {"name": "Rooms", "description": "Experience world-class luxury."},
                    {"name": "Budget Hotel", "description": "Affordable accommodation for every traveler."},
                ]
            }
        ]
        """
        
        let jsonData = mockJSON.data(using: .utf8)!
        
        do {
            let destinations = try JSONDecoder().decode([Destination].self, from: jsonData)
            return destinations
        } catch {
            print("Error decoding JSON: \(error)")
            return []
        }
    }
}
