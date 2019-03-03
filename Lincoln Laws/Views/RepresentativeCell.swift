//
//  RepresentativeCell.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/3/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import UIKit

public class RepresentativeCell: UITableViewCell {

    public var memberInfo: MemberData! {
        didSet {
            nameLabel.text = "\(memberInfo.firstName) \(memberInfo.lastName)"
            facebookButton.isEnabled = memberInfo.facebookId != nil
            twitterButton.isEnabled = memberInfo.twitterId != nil
            urlButton.isEnabled = memberInfo.url != nil
        }
    }

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var urlButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!

    @IBAction func genericUrlPressed(_ sender: Any) {
        if let memberUrl = memberInfo.url {
            UIApplication.shared.open(memberUrl, options: [:])
        }
    }
    @IBAction func facebookButtonPress(_ sender: Any) {
        if let facebookId = memberInfo.facebookId, let url = URL(string: "https://facebook.com/\(facebookId)") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    @IBAction func twitterButtonPress(_ sender: Any) {
        if let twitterId = memberInfo.twitterId, let url = URL(string: "https://twitter.com/\(twitterId)") {
            UIApplication.shared.open(url, options: [:])
        }
    }
}
