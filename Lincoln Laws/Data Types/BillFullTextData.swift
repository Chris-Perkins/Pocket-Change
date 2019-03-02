//
//  BillFullTextData.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

public struct BillFullTextData: Codable {
    public let distributionCode: String
    public let preamble: String
    public let resolutionBody: String

    enum CodingKeys: String, CodingKey {
        case distributionCode = "distribution-code"
        case preamble
        case resolutionBody = "resolution-body"
    }
}
