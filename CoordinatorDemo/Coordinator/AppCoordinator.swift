//
//  AppCoordinator.swift
//  CoordinatorDemo
//
//  Created by annpriya on 24/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

/// NOTE : We need to initialise all the let property if not then declare that variable as var.

public class AppCoordinator: Coordinator {
    private let window: UIWindow
    public let rootViewController: UINavigationController
    
    /// Declare Coordinator object which can be loaded depending on condition type.
    private var tutorialCoordinator: TutorialCoordinator?
    private var mainTabCoordinator: MainTabCoordinator?
    
    init(window: UIWindow) {
        self.window = window
        rootViewController = UINavigationController()
        
        /// checking for if app is launched, if yes then change the root of Coordinator to TabController class Coordinator. Otherwise set root to tutorialCoordinator only.
        if LocalStorage.getIsFirstTimeLaunched() {
            mainTabCoordinator = MainTabCoordinator(with: rootViewController)
            mainTabCoordinator?.navigateToTabController()
        } else {
            tutorialCoordinator = TutorialCoordinator(navigationController: rootViewController)
        }
    }
    
    /// Set window rootController to navigationController.
    public func start() {
        window.rootViewController = rootViewController
        tutorialCoordinator?.start()
        window.makeKeyAndVisible()
    }
}
