//
//  Cell.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import ClingConstraints
import MagazineLayout
import MaterialComponents
import UIKit

final class Cell: MagazineLayoutCollectionViewCell {

    // MARK: Lifecycle
    public let card: CellCard

    override init(frame: CGRect) {
        card = CellCard(frame: .zero)

        super.init(frame: frame)

        card.billClassificationCollectionView.delegate = self
        card.billClassificationCollectionView.dataSource = self

        card.backgroundColor = UIColor(red: 37.0 / 255.0, green: 58.0 / 255.0 , blue: 90.0 / 255.0, alpha: 1)
        //card.tintColor = UIColor(red: 103, green: 86, blue: 109, alpha: 1)
        contentView.addSubview(card)
        card.copy(.top, .bottom, .left, .right, of: contentView)

        clipsToBounds = false
        card.clipsToBounds = false
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowRadius = 5
        card.layer.shadowOpacity = 0.5
        card.layer.shadowOffset = CGSize(width: 1, height: 1)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented XD")
    }

    // MARK: Internal

    override func prepareForReuse() {
        super.prepareForReuse()

        card.titleLabel.text = nil
        card.label.text = nil
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

extension Cell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: card.classificationImageSquareDimension, height: card.classificationImageSquareDimension)
    }
}
