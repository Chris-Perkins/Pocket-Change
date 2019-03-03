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

    @IBOutlet weak var retryDownloadView: UIView!
    @IBOutlet weak var findingRepsLabel: UILabel!

    private var selectedState: State? {
        didSet {
            guard selectedState != nil else {
                return
            }
            pullNecessaryData()
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
            representativesTableView.allowsSelection = false
        }
    }

    private var locationOfUser: CLLocation? {
        didSet {
            guard locationOfUser != nil else {
                CoreLocationHandler.shared.locationBoi.delegate = self
                return
            }
            CoreLocationHandler.shared.locationBoi.delegate = nil
            pullNecessaryData()
        }
    }

    override public func viewDidLoad() {
        super.viewDidLoad()

        locationOfUser = CoreLocationHandler.shared.locationBoi.location
    }
    
    @IBAction func retryButtonPress(_ sender: Any) {
        findingRepsLabel.isHidden = false
        retryDownloadView.isHidden = true
        animationPlayerView.play()

        pullNecessaryData()
    }

    private func pullNecessaryData() {
        if selectedState == nil || selectedState == .unknown {
            guard let latitude = locationOfUser?.coordinate.latitude, let longitude = locationOfUser?.coordinate.longitude else {
                return
            }
            LincolnLawsServer.shared.getGoogleMapsLocation(lat: latitude, lon: longitude, successHandler: { [weak self] (data) in
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
            }) { (_, _, _) in
                DispatchQueue.main.async {
                    self.findingRepsLabel.isHidden = true
                    self.retryDownloadView.isHidden = false
                    self.animationPlayerView.pause()
                }
            }
        } else {
            if globalHouseMembers == nil {
                LincolnLawsServer.shared.getHouseMembers(successHandler: { [weak self] (members) in
                    self?.houseMembers = members.reduce([], { (currResult, membersResult) -> [MemberData] in
                        var currResult = currResult
                        currResult.append(contentsOf: membersResult.members)
                        return currResult
                    })
                }) { (_, _, _) in
                    DispatchQueue.main.async {
                        self.findingRepsLabel.isHidden = true
                        self.retryDownloadView.isHidden = false
                        self.animationPlayerView.pause()
                    }
                }
            } else {
                houseMembers = globalHouseMembers
            }
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "representativeCell") as! RepresentativeCell
        let stateMember = stateMembers![indexPath.row]
        cell.nameLabel.text = "\(stateMember.firstName) \(stateMember.lastName)"
        cell.facebookButton.isEnabled = stateMember.facebookId != nil
        cell.twitterButton.isEnabled = stateMember.twitterId != nil
        cell.urlButton.isEnabled = stateMember.url != nil
        return cell
    }
}
