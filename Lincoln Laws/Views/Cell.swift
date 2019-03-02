//
//  Cell.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import ClingConstraints
import MagazineLayout
import UIKit
import MaterialComponents

final class Cell: MagazineLayoutCollectionViewCell {

    // MARK: Lifecycle

    // Title goes here
    public let titleLabel: UILabel
    // Short description goes here
    public let label: UILabel
    // Classification images go here
    public let billClassificationCollectionView: UICollectionView

    private let classificationImageSquareDimension: CGFloat = 32

    override init(frame: CGRect) {
        label = UILabel(frame: .zero)
        titleLabel = UILabel(frame: .zero)

        let billClassViewLayout = UICollectionViewFlowLayout()
        billClassViewLayout.itemSize = CGSize(width: classificationImageSquareDimension,
                                              height: classificationImageSquareDimension)

        billClassificationCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        billClassificationCollectionView.isUserInteractionEnabled = false
        billClassificationCollectionView.register(PictureCell.self,
                                                  forCellWithReuseIdentifier: PictureCell.description())

        super.init(frame: frame)

        billClassificationCollectionView.backgroundColor = UIColor.clear
        billClassificationCollectionView.delegate = self
        billClassificationCollectionView.dataSource = self

        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabel.numberOfLines = 0

        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0

        let card = MDCCard(frame: .zero)
        contentView.addSubview(card)
        card.copy(.top, .bottom, .left, .right, of: contentView)

        card.addSubview(titleLabel)
        card.addSubview(label)
        card.addSubview(billClassificationCollectionView)

        titleLabel.copy(.top, .leading, of: card).withOffsets(8)
        titleLabel.copy(.trailing, of: card).withOffset(-8)

        label.copy(.leading, of: card).withOffset(8)
        label.copy(.trailing, of: card).withOffset(-8)
        label.cling(.top, to: titleLabel, .bottom).withOffset(8)

        billClassificationCollectionView.cling(.top, to: label, .bottom).withOffset(8)
        billClassificationCollectionView.copy(.leading, of: card).withOffset(8)
        billClassificationCollectionView.copy(.trailing, of: card).withOffset(-8)
        billClassificationCollectionView.copy(.bottom, of: card).withOffset(-8)
        billClassificationCollectionView.setHeight(classificationImageSquareDimension)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented XD")
    }

    // MARK: Internal

    override func prepareForReuse() {
        super.prepareForReuse()

        titleLabel.text = nil
        label.text = nil
        contentView.backgroundColor = nil
    }

}

extension Cell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: PictureCell.description(), for: indexPath)
    }
}

extension Cell: UICollectionViewDelegate {
}
