//
//  GetMembersResult.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/3/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

public struct GetMembersResult: Codable {
    public let members: [MemberData]

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        members = try values.decode([MemberData].self, forKey: .members)
    }
}
