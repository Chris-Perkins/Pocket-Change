//
//  Bill.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

// 2019-02-28
public struct Bill: Codable {
    let billId: String
    let sponsorUri: URL
    let billSlug: String

    let vetoed: Bool?
//    let introducedDate: Date
    let sponsorState: State
    let sponsorParty: Party
    let active: Bool
    let title: String
    let sponsorName: String
    let committees: String
    let primarySubject: String
    let latestMajorAction: String?
//    let latestMajorActionDate: Date
    let billUri: URL
    let summary: String
    let shortSummary: String
    let shortTitle: String
    let billType: String

    let tagEconomy: Bool
    let tagDA: Bool
    let tagFA: Bool
    let tagEnvironment: Bool
    let tagDefense: Bool

    let keywords: [String]?

    enum CodingKeys: String, CodingKey {
        case tagEconomy = "tag_economy"
        case tagDA = "tag_da"
        case tagFA = "tag_fa"
        case tagEnvironment = "tag_environment"
        case tagDefense = "tag_defense"

        case keywords = "google_tags"

        case billId = "bill_id"
        case sponsorUri = "sponsor_uri"
        case billSlug = "bill_slug"

        case vetoed
//        case introducedDate = "introduced_date"
        case sponsorState = "sponsor_state"
        case sponsorParty = "sponsor_party"
        case active
        case title
        case sponsorName = "sponsor_name"
        case committees
        case primarySubject = "primary_subject"
        case latestMajorAction
//        case latestMajorActionDate = "latest_major_action_date"
        case billUri = "bill_uri"
        case summary
        case shortSummary = "summary_short"
        case shortTitle = "short_title"
        case billType = "bill_type"
    }
}
