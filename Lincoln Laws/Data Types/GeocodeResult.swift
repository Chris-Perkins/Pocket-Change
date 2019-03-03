//
//  GeocodeResults.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

public struct GeoCodeResult: Codable {
    public let types: [GeoCodeType]
    public let longName: String
    public let shortName: String

    enum CodingKeys: String, CodingKey {
        case longName = "long_name"
        case shortName = "short_name"
        case types
    }
}
