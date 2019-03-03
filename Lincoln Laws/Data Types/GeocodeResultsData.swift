//
//  GeocodeResultsData.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

public struct GeoCodeResultsData: Codable {
    public let addressComponents: [GeoCodeResult]

    enum CodingKeys: String, CodingKey {
        case addressComponents = "address_components"
    }
}
