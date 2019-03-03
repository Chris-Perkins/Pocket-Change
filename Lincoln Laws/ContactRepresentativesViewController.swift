//
//  ContactRepresentativesViewController.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import CoreLocation
import Lottie
import MagazineLayout
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
            guard selectedState != nil else {
                return
            }
            if globalHouseMembers == nil {
                LincolnLawsServer.shared.getHouseMembers(successHandler: { [weak self] (members) in
                    self?.houseMembers = members.reduce([], { (currResult, membersResult) -> [MemberData] in
                        var currResult = currResult
                        currResult.append(contentsOf: membersResult.members)
                        return currResult
                    })
                }) { (data, response, _) in
                    print("FAIL")
                }
            } else {
                houseMembers = globalHouseMembers
            }
        }
    }

    private var houseMembers: [MemberData]? {
        didSet {
            // We can only get here if state is not nil
            let members = houseMembers?.filter { $0.state == selectedState! }
            guard let knownMembers = members else {
                return
            }
            animationContainingView.isHidden = true
            stateMembers = knownMembers
        }
    }

    private var stateMembers: [MemberData]? {
        didSet {
            representativesTableView.reloadData()
        }
    }

    @IBOutlet weak var representativesTableView: UITableView! {
        didSet {
            representativesTableView.delegate = self
            representativesTableView.dataSource = self
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

    override public func viewDidLoad() {
        super.viewDidLoad()

        locationOfUser = CoreLocationHandler.shared.locationBoi.location
    }

    private func updateForLatLonOfUser(from location: CLLocation) {
        LincolnLawsServer.shared.getGoogleMapsLocation(lat: location.coordinate.latitude, lon: location.coordinate.longitude, successHandler: { [weak self] (data) in

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
            self?.selectedState = foundState
        }) { (data, response, error) in
            print("FAIL")
        }
    }
}

extension ContactRepresentativesViewController: CLLocationManagerDelegate {
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationOfUser = locations.first
    }
}

// MARK: - UICollectionViewDataSource Extension

extension ContactRepresentativesViewController: UITableViewDelegate {
}

// MARK: - UICollectionViewDelegateMagazineLayout Extension

extension ContactRepresentativesViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stateMembers?.count ?? 0
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LMAO") as! RepresentativeCell
        cell.nameLabel.text = "\(stateMembers![indexPath.row].firstName) \(stateMembers![indexPath.row].lastName)"
        return cell
    }


}
