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

    override init(frame: CGRect) {
        label = UILabel(frame: .zero)
        titleLabel = UILabel(frame: .zero)
        billClassificationCollectionView = UICollectionView(frame: .zero, collectionViewLayout: .init())
        billClassificationCollectionView.isUserInteractionEnabled = false
        billClassificationCollectionView.backgroundColor = UIColor.red

        super.init(frame: frame)

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

        titleLabel.copy(.top, .leading, .trailing, of: card).withOffsets(8)

        label.copy(.leading, .trailing, of: card).withOffsets(8)
        label.cling(.top, to: titleLabel, .bottom).withOffset(8)

        billClassificationCollectionView.cling(.top, to: label, .bottom).withOffset(8)
        billClassificationCollectionView.copy(.leading, of: card).withOffset(8)
        billClassificationCollectionView.copy(.trailing, of: card).withOffset(-8)
        billClassificationCollectionView.copy(.bottom, of: card).withOffset(-8)
        billClassificationCollectionView.setHeight(45)

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented XD")
    }

    // MARK: Internal

    override func prepareForReuse() {
        super.prepareForReuse()

        label.text = nil
        contentView.backgroundColor = nil
    }

    // MARK: Private

    public let label: UILabel

    public let titleLabel: UILabel

    public let billClassificationCollectionView: UICollectionView

}

extension Cell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        fatalError("XD")
    }
}

extension Cell: UICollectionViewDelegate {

}
