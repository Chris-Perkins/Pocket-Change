//
//  PictureCell.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import ClingConstraints
import Lottie
import UIKit

public class PictureCell: UICollectionViewCell {

    public let lottieView: LOTAnimationView

    override public init(frame: CGRect) {
        lottieView = LOTAnimationView(name: "dollar")

        super.init(frame: frame)

        contentView.addSubview(lottieView)
        lottieView.copy(.top, .bottom, .left, .right, of: contentView)

        lottieView.contentMode = .scaleAspectFill

        clipsToBounds = false
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
