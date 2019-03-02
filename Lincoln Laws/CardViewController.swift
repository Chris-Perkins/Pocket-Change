//
//  CardViewController.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/1/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Hero
import MagazineLayout
import UIKit

// BEWARE HACKATHON CODE :O

class CardViewController: UIViewController {

    private var previouslySelectedCell: CellCard? {
        willSet {
            previouslySelectedCell?.hero.id = nil
            previouslySelectedCell?.titleLabel.hero.id = nil
            previouslySelectedCell?.label.hero.id = nil

            newValue?.hero.id = "card"
            newValue?.titleLabel.hero.id = "Title label"
            newValue?.label.hero.id = "Smaller boi label"
        }
    }

    @IBOutlet weak var cardCollectionView: UICollectionView! {
        didSet {
            cardCollectionView.dataSource = self
            cardCollectionView.delegate = self
            cardCollectionView.register(Cell.self, forCellWithReuseIdentifier: Cell.description())
        }
    }

    @objc public func segue(for cell: CellCard) {
        performSegue(withIdentifier: "cell", sender: self)
        previouslySelectedCell = cell
    }
}


// MARK: - UICollectionViewDataSource Extension

extension CardViewController: UICollectionViewDataSource {

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    public func collectionView(_ collectionView: UICollectionView,
                               cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cell.description(), for: indexPath) as! Cell
        for i in 0...indexPath.row {
            cell.card.titleLabel.text = "\(i)"
            cell.card.label.text = cell.card.label.text == nil ? "LINE 1" : cell.card.label.text! + "\n YO"
        }
        cell.card.addTarget(self, action: #selector(segue(for:)), for: .touchUpInside)
        return cell
    }
}

// MARK: - UICollectionViewDelegateMagazineLayout Extension

extension CardViewController: UICollectionViewDelegateMagazineLayout {

    /// `collectionView(_: UICollectionView, layout: UICollectionViewLayout, sizeModeForItemAt: IndexPath)` is a
    /// function that is used to retrieve the width and height of cell.
    ///
    /// Currently, the width is set to 1/3 of the input view and its width will be set to 0.75 of that.
    ///
    /// - Parameters:
    ///   - collectionView: The collection view
    ///   - collectionViewLayout: The layout of the cell
    ///   - indexPath: The indexPath of the cell
    /// - Returns: The height and width mode of the cell
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                               sizeModeForItemAt indexPath: IndexPath) -> MagazineLayoutItemSizeMode {
        let widthMode = MagazineLayoutItemWidthMode.fullWidth(respectsHorizontalInsets: true)
        let heightMode = MagazineLayoutItemHeightMode.dynamic
        return MagazineLayoutItemSizeMode(widthMode: widthMode, heightMode: heightMode)
    }

    /// `collectionView(_: UICollectionView, layout: UICollectionViewLayout,
    /// visibilityModeForHeaderInSectionAtIndex: Int)` is used to retrieve the visibility mode of the cell.
    ///
    /// - Parameters:
    ///   - collectionView: The collection view
    ///   - collectionViewLayout: The layout of the cell
    ///   - index: The indexPath of the cell
    /// - Returns: the visible mode
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                               visibilityModeForHeaderInSectionAtIndex index: Int)
        -> MagazineLayoutHeaderVisibilityMode {
            return .visible(heightMode: .dynamic)
    }

    /// `collectionView(_: UICollectionView, layout: UICollectionViewLayout,
    /// visibilityModeForBackgroundInSectionAtIndex: Int)` is used to retrieve the background visibility mode of the
    /// cell.
    ///
    /// - Parameters:
    ///   - collectionView: The collection view
    ///   - collectionViewLayout: The layout of the cell
    ///   - index: The index of the cell
    /// - Returns: `.hidden` to hide the background
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                               visibilityModeForBackgroundInSectionAtIndex index: Int)
        -> MagazineLayoutBackgroundVisibilityMode {
            return .hidden
    }

    /// `collectionView(_: UICollectionView, layout: UICollectionViewLayout,
    /// horizontalSpacingForItemsInSectionAtIndex: Int)` is used to retrieve the horizontal spacing amount. This is 12.
    ///
    /// - Parameters:
    ///   - collectionView: The collection view
    ///   - collectionViewLayout: The layout of the cell
    ///   - index: The index of the cell
    /// - Returns: 12
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                               horizontalSpacingForItemsInSectionAtIndex index: Int) -> CGFloat {
        return 18
    }

    /// `collectionView(_: UICollectionView, layout: UICollectionViewLayout,
    /// verticalSpacingForItemsInSectionAtIndex: Int)` is used to retrieve the vertical spacing amount. This is 12.
    ///
    /// - Parameters:
    ///   - collectionView: The collection view
    ///   - collectionViewLayout: The layout of the cell
    ///   - index: The index of the cell
    /// - Returns: 12
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                               verticalSpacingForElementsInSectionAtIndex index: Int) -> CGFloat {
        return 18
    }

    /// `collectionView(_: UICollectionView, layout: UICollectionViewLayout, insetsForItemsInSectionAtIndex: Int)` is
    /// used to retrieve the insets for the item at the provided section. This is set to `collectionViewInset`.
    ///
    /// - Parameters:
    ///   - collectionView: The collection view
    ///   - collectionViewLayout: The layout of the cell
    ///   - index: The index of the cell
    /// - Returns: `collectionViewInset`
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                               insetsForItemsInSectionAtIndex index: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
}
