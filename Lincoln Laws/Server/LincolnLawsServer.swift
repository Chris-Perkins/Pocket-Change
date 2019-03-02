//
//  LincolnLawsServer.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

public class LincolnLawsServer {

    private struct EndPoints {
        private static let baseEndPointString = "https://ultra-function-233305.appspot.com"

        private static let mostRecentUrl = URL(string: "\(baseEndPointString)/recent")!
    }

    // Singleton, nice cool good job woo.
    static var shared: LincolnLawsServer = {
        return LincolnLawsServer()
    }()

    

    private init() {}
}
