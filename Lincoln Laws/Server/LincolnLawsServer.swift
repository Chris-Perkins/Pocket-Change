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
        private static let baseEndPointString = "http://34.73.177.91:5010"

        public static let mostRecentUrl = URL(string: "\(baseEndPointString)/recent")!

        public static let getFullTextUrl = "\(baseEndPointString)/fulltext/{0}/{1}/"
    }

    public enum RecentBillsResult {
        case success([Bill])
        case failure(Data?, URLResponse?, Error?)
    }

    // Singleton, nice cool good job woo.
    static var shared: LincolnLawsServer = {
        return LincolnLawsServer()
    }()

    /// `objectDecoder` is used for JSON Decoding. This JSONDecoder has a date decoding strategy of `.iso8601`.
    private lazy var objectDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()

    func getMostRecentBills(successHandler: @escaping (MostRecentBillData) -> Void,
                            failureHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        var request = URLRequest(url: EndPoints.mostRecentUrl)
        request.timeoutInterval = 10
        URLSession.shared.dataTask(with: request) {data,response,error in
            guard let nonNilData = data, let returnedData = try? self.objectDecoder.decode(MostRecentBillData.self, from: nonNilData)  else {
                    failureHandler(data, response, error)
                    return
            }
            retrievedMostRecentBillData = returnedData
            successHandler(returnedData)
        }.resume()
    }

    func getFullText(bill: Bill, successHandler: @escaping (BillFullTextData) -> Void,
                     failureHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        var request = URLRequest(url: URL(string: EndPoints.getFullTextUrl.replacingOccurrences(of: "{1}", with: bill.billSlug).replacingOccurrences(of: "{0}", with: "\(retrievedMostRecentBillData.congress)"))!)
        request.timeoutInterval = 10
        URLSession.shared.dataTask(with: request) {data,response,error in
            guard let nonNilData = data, let returnedData = try? self.objectDecoder.decode(BillFullTextData.self, from: nonNilData)  else {
                failureHandler(data, response, error)
                return
            }
            successHandler(returnedData)
        }.resume()
    }

    private init() {}
}
