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
            billClassificationCollectionView.reloadData()
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

        billClassificationCollectionView.delegate = self
        billClassificationCollectionView.dataSource = self

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

    public func getBillImageNames() -> [String] {
        guard let bill = billForCard else {
            return []
        }

        var currentBillImages = [String]()
        if bill.tagEnvironment {
            currentBillImages.append("leaf")
        }
        if bill.tagDA {
            currentBillImages.append("house")
        }
        if bill.tagFA {
            currentBillImages.append("globe")
        }
        if bill.tagDefense {
            currentBillImages.append("shield")
        }
        if bill.tagEconomy {
            currentBillImages.append("dollar")
        }
        return currentBillImages
    }
}

extension CellCard: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getBillImageNames().count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PictureCell.description(), for: indexPath) as! PictureCell
        cell.lottieView.setAnimation(named: getBillImageNames()[indexPath.row])
        return cell
    }
}

extension CellCard: UICollectionViewDelegate {
}

extension CellCard: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: classificationImageSquareDimension, height: classificationImageSquareDimension)
    }
}
