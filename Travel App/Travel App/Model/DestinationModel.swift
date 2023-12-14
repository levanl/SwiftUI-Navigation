//
//  DestinationModel.swift
//  Travel App
//
//  Created by Levan Loladze on 13.12.23.
//

import Foundation

// MARK: DestinationModel
struct Destination: Identifiable, Hashable, Decodable {
    let id: String
    let name: String
    let description: String
    var transportInfo: [TransportType]
    var mustSeeInfo: [MustSeeType]
    var hotelInfo: [HotelType]
    let imageName: String
}

// MARK: TransportTypeModel
struct TransportType: Hashable, Decodable {
    var name: String
    var description: String
}

// MARK: MustSeeTypeModel
struct MustSeeType: Hashable, Codable {
    var name: String
    var description: String
}

// MARK: HotelTypeModel
struct HotelType: Hashable, Codable {
    var name: String
    var description: String
}
