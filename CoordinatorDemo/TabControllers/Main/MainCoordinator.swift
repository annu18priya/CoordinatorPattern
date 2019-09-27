//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by annpriya on 25/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

// https://stackoverflow.com/questions/46492824/how-do-i-use-coordinators-with-a-uiitabbarcontroller

import UIKit

public final class MainCoordinator: MainTabCoordinator {
    
    var currentController: MainViewController?
    public weak var tabController: TabBarController?
    
    override init(with navigationController: UINavigationController) {
        super.init(with: navigationController)
        currentController = MainViewController()
        currentController?.coordinator = self
        childCoordinators.append(self)
    }
    
    public override func start() {
        let mainVC = MainViewController.instantiate(with: "Tabbar")
        navigationController.pushViewController(mainVC, animated: true)
    }
    

}
