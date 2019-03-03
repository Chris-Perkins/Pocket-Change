//
//  ContactRepresentativesViewController.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import CoreLocation
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

    private var selectedState: State? {
        didSet {

        }
    }

    private var locationOfUser: CLLocation? {
        didSet {
            guard let lastLocation = locationOfUser else {
                CoreLocationHandler.shared.locationBoi.delegate = self
                return
            }
            CoreLocationHandler.shared.locationBoi.delegate = nil
            updateForLatLonOfUser(from: lastLocation)
        }
    }

    @IBOutlet weak var representativesCollectionView: UICollectionView! {
        didSet {
            representativesCollectionView.setHeight(representativesCollectionView.contentSize.height)
        }
    }

    override public func viewDidLoad() {
        super.viewDidLoad()

        locationOfUser = CoreLocationHandler.shared.locationBoi.location
    }

    private func updateForLatLonOfUser(from location: CLLocation) {
        LincolnLawsServer.shared.getGoogleMapsLocation(lat: location.coordinate.latitude, lon: location.coordinate.longitude, successHandler: { (data) in

            var foundState: State = .unknown

            for geocodeData in data.results {
                for addressComponentData in geocodeData.addressComponents {
                    for addressType in addressComponentData.types {
                        if addressType == .administrativeAreaLevel1 {
                            if let data = State(rawValue: addressComponentData.shortName) {
                                foundState = data
                            }
                        }
                    }
                }
            }
            self.selectedState = foundState
        }) { (data, response, error) in
            print(data, response, error)
        }
    }
}

extension ContactRepresentativesViewController: CLLocationManagerDelegate {
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationOfUser = locations.first
    }
}
