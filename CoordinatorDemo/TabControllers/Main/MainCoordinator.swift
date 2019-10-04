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
        currentController?.doNavigation = doNavigation
        currentController?.coordinator = self
        childCoordinators.append(self)
    }
    
    public override func start() {
        /// Empty Declaration
    }
    
    public func doNavigation(mainObj: Main) {
        let mainDetailVC = MainDetailViewController.instantiate(with: "Tabbar")
        mainDetailVC.mainObj = mainObj
        let navController = UIApplication.shared.keyWindow?.rootViewController as! UINavigationController
        navController.pushViewController(mainDetailVC, animated: true)
    }

}
