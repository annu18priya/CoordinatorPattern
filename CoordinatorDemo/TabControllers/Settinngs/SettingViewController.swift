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
        ResultsData().fetch(queryValue: "restaurant", location: "25.5941,85.1376", radius: 10000) { [weak self] (resultData, httpStatusCode) in
            
            /// Checking if server returns some response.
            guard self != nil else { return }
            
            /// If we want to use self value for checking data then we can use it like
            // guard let `self` = self else { return }

            if httpStatusCode == .success {
                /// Checking if array contains some value in it.
                resultData.results.isEmpty ? self?.showNoDataFromServer() : self?.showDataFromServer()
                
            } else {
                // handle error code and perform error handling condition.
                debugPrint(">>>>>> :\(httpStatusCode)")
            }
           
        }
    }
    
    private func showNoDataFromServer() {
        debugPrint("showNoDataFromServer")
    }
    
    private func showDataFromServer() {
        debugPrint("showDataFromServer")
    }
}
