//
//  AppCoordinator.swift
//  CoordinatorDemo
//
//  Created by annpriya on 24/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

public class AppCoordinator: Coordinator {
    
    private let window: UIWindow
    public let rootViewController: UINavigationController
    private let tutorialCoordinator: TutorialCoordinator?
    
    init(window: UIWindow) {
        self.window = window
        rootViewController = UINavigationController()
        tutorialCoordinator = TutorialCoordinator(navigationController: rootViewController)
    }
    
    public func start() {
        window.rootViewController = rootViewController
        tutorialCoordinator?.start()
        window.makeKeyAndVisible()
    }
}
