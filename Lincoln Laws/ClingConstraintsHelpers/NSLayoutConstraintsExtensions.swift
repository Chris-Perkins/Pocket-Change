//
//  NSLayoutConstraintsExtensions.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import ClingConstraints
import UIKit

extension Collection where Element == NSLayoutConstraint {
    public func withOffsets(_ offset: CGFloat) {
        for item in self {
            item.withOffset(offset)
        }
    }
}
