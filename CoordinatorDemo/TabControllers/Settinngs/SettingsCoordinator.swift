//
//  Settings.swift
//  CoordinatorDemo
//
//  Created by annpriya on 25/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

public final class SettingsCoordinator: MainTabCoordinator {
    
    var currentController: SettingViewController?
    public weak var tabController: TabBarController?
    
    override init(with navigationController: UINavigationController) {
        super.init(with: navigationController)
        currentController = SettingViewController.instantiate(with: "Tabbar")
        currentController?.coordinator = self
        childCoordinators.append(self)
    }
    
    public override func start() {
        let settingsVC = SettingViewController.instantiate(with: "Tabbar")
        navigationController.pushViewController(settingsVC, animated: true)
    }
}
