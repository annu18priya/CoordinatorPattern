//
//  SettingViewController.swift
//  CoordinatorDemo
//
//  Created by annpriya on 25/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, Storyboarded {
    
    weak var coordinator: SettingsCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        callApi()
    }

    /// MARK :- API Calling.
    
    private func callApi() {
        ResultsData().fetch(queryValue: "restaurant", location: "25.5941,85.1376", radius: 10000) { (resultData, httpStatusCode) in
            debugPrint(">>>>>> :\(resultData.results[0].formattedAddress)")
            debugPrint(">>>>>> :\(httpStatusCode)")
        }
    }
}
