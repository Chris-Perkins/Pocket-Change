//
//  GeoCodeType.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

public enum GeoCodeType: String, Codable {
    case administrativeAreaLevel1 = "administrative_area_level_1"
    case administrativeAreaLevel2 = "administrative_area_level_2"
    case country
    case locality
    case political
    case postalCode = "postal_code"
    case postalCodeSuffix = "postal_code_suffix"
    case premise
    case route = "route"
    case streetNumber = "street_number"
}
