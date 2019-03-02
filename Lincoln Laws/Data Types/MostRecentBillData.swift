//
//  MostRecentBillData.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

public struct MostRecentBillData: Codable {
    public let offset: Int
    public let bills: [Bill]
    public let congress: Int
    public let chamber: Chamber
}
