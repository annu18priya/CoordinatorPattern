//
//  TabBarController.swift
//  CoordinatorDemo
//
//  Created by annpriya on 26/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

public final class TabBarController: UITabBarController {
    
    public weak var coordinator: TabCoordinator?

    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let mainNavController = UINavigationController()
        let mainCoordinator = MainCoordinator(with: mainNavController)
        mainCoordinator.tabController = self
        mainCoordinator.currentController?.tabBarItem = UITabBarItem(title: "Main",
                                                                  image: nil,
                                                                  tag: 11)
        
        let settingsNavController = UINavigationController()
        let settingsCoordinator = SettingsCoordinator(with: settingsNavController)
        settingsCoordinator.tabController = self
        settingsCoordinator.currentController?.tabBarItem = UITabBarItem(title: "Settings",
                                                                     image: nil,
                                                                     tag: 12)
        
        viewControllers = [
            mainCoordinator.currentController!,
            settingsCoordinator.currentController!
        ]
        
        tabBar.barTintColor = UIColor.white
        tabBar.isTranslucent = false
        
    }
    
}
