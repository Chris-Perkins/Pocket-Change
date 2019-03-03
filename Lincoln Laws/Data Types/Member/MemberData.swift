//
//  MemberData.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/3/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

public struct MemberData: Codable {
    public let firstName: String
    public let lastName: String
    public let url: URL?
    public let facebookId: String?
    public let twitterId: String?
    public let state: State

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case url
        case facebookId = "facebook_account"
        case twitterId = "twitter_account"
        case state
    }
}
