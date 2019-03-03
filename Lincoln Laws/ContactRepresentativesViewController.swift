//
//  ContactRepresentativesViewController.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Lottie
import UIKit

public class ContactRepresentativesViewController: UIViewController {
    @IBOutlet weak var animationContainingView: UIView!
    @IBOutlet weak var animationPlayerView: LOTAnimationView! {
        didSet {
            animationPlayerView.loopAnimation = true
            animationPlayerView.play()
        }
    }

    @IBOutlet weak var representativesCollectionView: UICollectionView! {
        didSet {
            representativesCollectionView.setHeight(representativesCollectionView.contentSize.height)
        }
    }
}
