//
//  Settings.swift
//  CoordinatorDemo
//
//  Created by annpriya on 07/10/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation

public struct ResultsData {
    let results: [Results]
}

public struct Results {
    let formattedAddress: String?
    let name: String?
    let geometry: Geometry?
}

public struct Geometry {
    let location: Location?
}

public struct Location {
    let lat: Double?
    let lng: Double?
}
