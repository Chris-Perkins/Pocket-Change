//
//  CardViewController.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/1/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Hero
import Lottie
import MagazineLayout
import UIKit

// BEWARE HACKATHON CODE :O

class CardViewController: UIViewController {

    @IBOutlet weak var contactingCapitolHillLabel: UILabel!
    @IBOutlet weak var retryDownloadView: UIView!

    @IBOutlet weak var loadingView: UIView! {
        didSet {
            // start up the core location handler lol hackathon code.
            _ = CoreLocationHandler.shared
        }
    }

    private var billData: MostRecentBillData? {
        didSet {
            DispatchQueue.main.async {
                self.cardCollectionView.reloadData()
            }
        }
    }

    private var selectedCell: CellCard? {
        willSet {
            selectedCell?.hero.id = nil
            selectedCell?.titleLabel.hero.id = nil
            selectedCell?.label.hero.id = nil

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

            downloadBillData()
        }
    }

    @objc public func segue(for cell: CellCard) {
        selectedCell = cell
        performSegue(withIdentifier: "cell", sender: self)
    }

    @IBOutlet weak var lottieView: LOTAnimationView! {
        didSet {
            lottieView.loopAnimation = true
            lottieView.play()
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?  CardDetailViewController {
            destination.billToDisplay = selectedCell?.billForCard
        }
    }

    @IBAction func retryButtonPress(_ sender: Any) {
        contactingCapitolHillLabel.isHidden = false
        retryDownloadView.isHidden = true
        lottieView.play()

        downloadBillData()
    }

    private func downloadBillData() {
        LincolnLawsServer.shared.getMostRecentBills(successHandler: { (billData) in
            self.billData = billData
            DispatchQueue.main.async {
                UIView.animate(withDuration: 0.2, animations: {
                    self.loadingView.alpha = 0
                })
            }
        }) { (_, _, _) in
            DispatchQueue.main.async {
                self.lottieView.pause()
                self.retryDownloadView.isHidden = false
                self.contactingCapitolHillLabel.isHidden = true
            }
        }
    }
}


// MARK: - UICollectionViewDataSource Extension

extension CardViewController: UICollectionViewDataSource {

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return billData?.bills.count ?? 0
    }

    public func collectionView(_ collectionView: UICollectionView,
                               cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cell.description(), for: indexPath) as! Cell

        cell.card.billForCard = billData!.bills[indexPath.row]

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
