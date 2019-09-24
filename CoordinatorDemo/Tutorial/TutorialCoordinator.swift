//
//  TutorialCoordinator.swift
//  CoordinatorDemo
//
//  Created by annpriya on 24/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

public final class TutorialCoordinator: Coordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        let tutorialVC = TutorialViewController.instantiate()
        navigationController.pushViewController(tutorialVC, animated: true)
    }
    
    
}
