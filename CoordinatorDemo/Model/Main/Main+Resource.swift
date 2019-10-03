//
//  Main+Resource.swift
//  CoordinatorDemo
//
//  Created by annpriya on 03/10/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation

extension Main {
    
    typealias main = (_ main: Main?, _ error: Error?) -> Void
    
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
    
    static func fetch(completionHandler: @escaping(main)) {
        guard let path = Bundle.main.path(forResource: "medical", ofType: "json") else { fatalError() }
        
        do {
            let mockedData = try NSData(contentsOfFile: path, options: NSData.ReadingOptions.alwaysMapped)
            let jsonResult = try JSONSerialization.jsonObject(with: mockedData as Data, options: JSONSerialization.ReadingOptions.mutableContainers)
            let main = try Main(json: jsonResult as! JSONDictionary)
            return completionHandler(main, nil)
        } catch let error as NSError {
            debugPrint("Error in LoadingMocks \(error)")
            return completionHandler(nil, error)
        }
    }
}
