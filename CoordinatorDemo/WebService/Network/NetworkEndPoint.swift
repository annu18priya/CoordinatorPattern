//
//  NetworkEndPoint.swift
//  CoordinatorDemo
//
//  Created by annpriya on 03/10/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation

private enum NetworkEndPoint: String {
    case prod
    case staging
    case qa
    case develop
    
    var apiKey: String {
        switch self {
        case .prod:
            return "k1"
        case .staging:
            return "k2"
        case .qa:
            return "k3"
        case .develop:
            return "k4"
        default:
            ()
        }
    }
    
    var apiURL: String {
        switch self {
        case .prod:
            return "ur1"
        case .staging:
            return "url2"
        case .qa:
            return "url3"
        case .develop:
            return "url4"
        default:
            ()
        }
    }
}

public struct AppConfiguration {
    internal var apiURL: URL
    internal var apiKey: String
    private let enviornment: NetworkEndPoint
    
    public static var `default`: AppConfiguration = {
        #if PRODUCTION
        let enviorment = NetworkEndPoint.prod
        #elseif QA
        let enviorment = NetworkEndPoint.qa
        #elseif STAGING
        let enviorment = NetworkEndPoint.staging
        #else
        let enviorment = NetworkEndPoint.develop
        #endif
        
        var apiUrlString = enviorment.rawValue
        let apiUrl = URL(string: apiUrlString)!
        return AppConfiguration(apiURL: apiUrl, apiKey: enviorment.apiKey, enviornment: enviorment)
    }()
}
