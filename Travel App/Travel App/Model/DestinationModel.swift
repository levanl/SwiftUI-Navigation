//
//  DestinationModel.swift
//  Travel App
//
//  Created by Levan Loladze on 13.12.23.
//

import Foundation


struct Destination: Identifiable, Hashable, Decodable {
    let id: String
    let name: String
    let description: String
    var transportInfo: [TransportType]
    var mustSeeInfo: [MustSeeType]
    var hotelInfo: [HotelType]
    let imageName: String
}


struct TransportType: Hashable, Decodable {
    var name: String
    var description: String
}


struct MustSeeType: Hashable, Codable {
    var name: String
    var description: String
}

struct HotelType: Hashable, Codable {
    var name: String
    var description: String
}
