//
//  CardDetailViewController.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import ClingConstraints
import UIKit
import Lottie

public class CardDetailViewController: UIViewController {

    public var billToDisplay: Bill? {
        didSet {
            guard let bill = billToDisplay else {
                partySponsorLottieView?.animation = nil
                return
            }
            if bill.sponsorParty == .democrat {
                partySponsorLottieView?.setAnimation(named: "republican")
                sponsorLabel?.text = "Sponsoring Party: Republican"
            } else {
                partySponsorLottieView?.setAnimation(named: "democrat")
                sponsorLabel?.text = "Sponsoring Party: Democrat"
            }
            titleLabel?.text = bill.title
            descriptionLabel?.text = "ADSADA"
        }
    }

    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            guard let bill = billToDisplay else {
                partySponsorLottieView?.animation = nil
                return
            }
            titleLabel?.text = bill.shortTitle
        }
    }

    @IBOutlet weak var descriptionLabel: UILabel! {
        didSet {
            guard let bill = billToDisplay else {
                return
            }
            descriptionLabel?.text = "ASDLJAD"
        }
    }

    @IBOutlet weak var closeButton: UIButton! {
        didSet {
            closeButton.layer.shadowColor = UIColor.white.cgColor
            closeButton.layer.shadowOffset = CGSize.zero
            closeButton.layer.shadowRadius = 2
            closeButton.layer.shadowOpacity = 1
        }
    }
    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var animationViewContainer: UIView! {
        didSet {
            partySponsorLottieView = LOTAnimationView(frame: .zero)
            animationViewContainer.addSubview(partySponsorLottieView!)
            partySponsorLottieView?.copy(.top, .left, .bottom, .right, of: animationViewContainer)
        }
    }

    override public var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }

    @IBOutlet weak var sponsorLabel: UILabel! {
        didSet {
            guard let bill = billToDisplay else {
                partySponsorLottieView?.animation = nil
                return
            }
            if bill.sponsorParty == .democrat {
                sponsorLabel?.text = "Sponsoring Party: Republican"
            } else {
                sponsorLabel?.text = "Sponsoring Party: Democrat"
            }
        }
    }

    public var partySponsorLottieView: LOTAnimationView? {
        didSet {
            guard let bill = billToDisplay else {
                partySponsorLottieView?.animation = nil
                return
            }
            if bill.sponsorParty == .democrat {
                partySponsorLottieView?.setAnimation(named: "republican")
            } else {
                partySponsorLottieView?.setAnimation(named: "democrat")
            }
        }
    }
}
