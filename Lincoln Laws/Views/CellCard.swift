//
//  CellCard.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import ClingConstraints
import MaterialComponents
import UIKit

public class CellCard: MDCCard {

    // Title goes here
    public let titleLabel: UILabel
    // Short description goes here
    public let label: UILabel
    // Classification images go here
    public let billClassificationCollectionView: UICollectionView

    public var billForCard: Bill? {
        didSet {
            titleLabel.text = billForCard?.shortTitle
        }
    }

    public let classificationImageSquareDimension: CGFloat = 32

    override public init(frame: CGRect) {
        label = UILabel(frame: .zero)
        titleLabel = UILabel(frame: .zero)

        billClassificationCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        billClassificationCollectionView.isUserInteractionEnabled = false
        billClassificationCollectionView.register(PictureCell.self,
                                                  forCellWithReuseIdentifier: PictureCell.description())
        billClassificationCollectionView.clipsToBounds = false
        
        super.init(frame: frame)

        billClassificationCollectionView.backgroundColor = UIColor.clear

        addSubview(titleLabel)
        addSubview(label)
        addSubview(billClassificationCollectionView)

        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabel.numberOfLines = 0

        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0

        label.copy(.leading, of: self).withOffset(8)
        label.copy(.trailing, of: self).withOffset(-8)
        label.cling(.top, to: titleLabel, .bottom).withOffset(8)
        label.textColor = UIColor.white

        billClassificationCollectionView.cling(.top, to: label, .bottom).withOffset(16)
        billClassificationCollectionView.copy(.leading, of: self).withOffset(8)
        billClassificationCollectionView.copy(.trailing, of: self).withOffset(-8)
        billClassificationCollectionView.copy(.bottom, of: self).withOffset(-8)
        billClassificationCollectionView.setHeight(classificationImageSquareDimension)

        titleLabel.copy(.top, .leading, of: self).withOffsets(8)
        titleLabel.copy(.trailing, of: self).withOffset(-8)
        titleLabel.textColor = UIColor.white
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("Nope!")
    }
}
