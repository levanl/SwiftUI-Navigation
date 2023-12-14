//
//  MockTravelTipsNetworking.swift
//  Travel App
//
//  Created by Levan Loladze on 14.12.23.
//

import Foundation

// MARK: TravelTipsMockService
final class TravelTipsService {
    static func getMockTravelTips() -> [TravelTip] {
        let mockJSON = """
        [
            {
                "title": "Make photocopies of important documents"
            },
            {
                "title": "Purchase travel insurance",
            },
            {
                "title": "Ask the locals",
            },
            {
                "title": "Always bring a sarong",
            },
            {
                "title": "Book the cheapest flights",
            }
        ]
        """
        
        let jsonData = mockJSON.data(using: .utf8)!
        
        do {
            let travelTips = try JSONDecoder().decode([TravelTip].self, from: jsonData)
            return travelTips
        } catch {
            print("Error decoding JSON: \(error)")
            return []
        }
    }
}
