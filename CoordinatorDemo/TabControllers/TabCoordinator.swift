//
//  TabCoordinator.swift
//  CoordinatorDemo
//
//  Created by annpriya on 25/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

public final class TabCoordinator: MainTabCoordinator {
    var currentController: TabBarController?
    
    override init(with navigationController: UINavigationController) {
        super.init(with: navigationController)
        
        self.currentController = TabBarController()
        self.childCoordinators.append(self)
        self.currentController?.coordinator = self
    }
    
    public override func start() {
        navigationController.pushViewController(currentController ?? UIViewController(),
                                                 animated: true)
    }
}
