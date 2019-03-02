//
//  CardDetailViewController.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import UIKit

public class CardDetailViewController: UIViewController {
    @IBOutlet weak var closeButton: UIButton! {
        didSet {
            closeButton.layer.shadowColor = UIColor.white.cgColor
            closeButton.layer.shadowOffset = CGSize(width: 1, height: 1)
            closeButton.layer.shadowRadius = 5
            closeButton.layer.shadowOpacity = 1
        }
    }
    @IBOutlet weak var scrollView: UIScrollView!

    override public var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
}
