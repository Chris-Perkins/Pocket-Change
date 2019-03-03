//
//  CoreLocationHandler.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import CoreLocation

class CoreLocationHandler: NSObject {

    public lazy var locationBoi: CLLocationManager = {
        let manager = CLLocationManager()
        manager.requestWhenInUseAuthorization()
        manager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        manager.allowsBackgroundLocationUpdates = false
        manager.startUpdatingLocation()
        return manager
    }()

    public static let shared: CoreLocationHandler = {
        let thing = CoreLocationHandler()
        // Start updating locations. lol hackathon code.
        _ = thing.locationBoi
        return thing
    }()

    override private init() {}
}
