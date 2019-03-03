//
//  GeoCodeData.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

public struct GeocodeData: Codable {
    public let results: [GeoCodeResultsData]
}
