//
//  PictureCell.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import ClingConstraints
import UIKit

public class PictureCell: UICollectionViewCell {

    let imageView: UIImageView

    override public init(frame: CGRect) {
        imageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = UIColor.white

        super.init(frame: frame)

        imageView.image = UIImage(named: "boi")

        contentView.addSubview(imageView)
        imageView.copy(.top, .bottom, .left, .right, of: contentView)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
