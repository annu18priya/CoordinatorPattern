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
    
    /// Changing AppDelegate rootController to tabbar controller roots as after first successful launch root is changed for app.
    public func navigateToTabController() {
        let tabCoordinator = TabCoordinator(with: navigationController)
        tabCoordinator.start()
        UIApplication.shared.keyWindow?.rootViewController = navigationController
    }
}
