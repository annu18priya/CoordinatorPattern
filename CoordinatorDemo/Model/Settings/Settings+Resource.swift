//
//  Settings+Resource.swift
//  CoordinatorDemo
//
//  Created by annpriya on 07/10/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation

extension ResultsData {
    
    internal typealias result = ((_ resultsData: ResultsData, _ statusCode: HTTPStatusCode) -> Void)
    
    public enum EndPoints: String {
        #if PRODUCTION
        case root = "p1"
        #elseif STAGING
        case root = "p2"
        #elseif QA
        case root = "p2"
        #else
        case root = "p2"
        #endif
    }
    
    static func fetch(params: [String: Any] = [:], queryValue: String, location: String = "", radius: Int = 0, completionHandler: @escaping(result)) {
        
        /// URLQueryItem - is included in api as part of URLComponent. Its normally used in case of get type api in which params is appended in URL.
        let query: [URLQueryItem] = [URLQueryItem(name: "query", value: queryValue), URLQueryItem(name: "location", value: "25.5941,85.137"), URLQueryItem(name: "radius", value: "\(radius)")]

        let requestURL = "\(AppConfiguration.default.apiURL)" +  "\(query)" + "\(AppConfiguration.default.apiKey)"
        
        NetworkManager().apiRequest(method: HTTPMethod.get, apiURL: requestURL, parameters: [ : ], headers: [ : ]) { (data: Data, statusCode: HTTPStatusCode) in
            
            guard let data1 = data else { return }
            
            do {
                let jsonResult = try JSONSerialization.jsonObject(with: data1 as Data, options: JSONSerialization.ReadingOptions.mutableContainers)
                let resultsData = try ResultsData(results: jsonResult as! JSONDictionary)
                return completionHandler(resultsData, nil)
            }
            catch let statusCode as HTTPStatusCode {
                debugPrint("Error in LoadingMocks \(statusCode)")
                return completionHandler(nil, statusCode)
            }
        }
    }
}
