//
//  MainTabCoordinator.swift
//  CoordinatorDemo
//
//  Created by annpriya on 26/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

public class MainTabCoordinator: Coordinator {    
    
    public let navigationController: UINavigationController
    
    /// Declaring Coordinators for Tab Controller
    public var childCoordinators: [Coordinator] = [Coordinator]()
    
    init(with navigationController: UINavigationController) {
       self.navigationController = navigationController
    }
    
    public func start() {
        /// Empty declaration for now.
    }
    
    public func navigateToTabController() {
        let tabCoordinator = TabCoordinator(with: navigationController)
        tabCoordinator.start()
        UIWindow().rootViewController = navigationController
    }
}
