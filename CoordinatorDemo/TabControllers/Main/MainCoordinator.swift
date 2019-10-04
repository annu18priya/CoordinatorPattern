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
        currentController = MainViewController.instantiate(with: "Tabbar")
        currentController?.coordinator = self
        childCoordinators.append(self)
    }
    
    public override func start() {
        let mainVC = MainViewController.instantiate(with: "Tabbar")
        mainVC.doNavigation = doNavigation
        navigationController.pushViewController(mainVC, animated: true)
    }
    
    public func doNavigation(mainObj: Main) {
        let mainDetailVC = MainDetailViewController.instantiate(with: "Tabbar")
        mainDetailVC.mainObj = mainObj
        navigationController.pushViewController(mainDetailVC, animated: true)
    }

}
