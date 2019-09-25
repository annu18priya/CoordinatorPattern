//
//  TutorialViewController.swift
//  CoordinatorDemo
//
//  Created by annpriya on 24/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

/// Important : Any tap in VC can be handled using closure or delegate function.

public protocol TutorialViewControllerDelegate: class {
    func didNextTapped()
}

class TutorialViewController: UIViewController, Storyboarded {
    
    /// Using Closure
    internal var doNavigation: () -> Void = { }
    
    /// Using delegate
    internal weak var delegate: TutorialViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func nextTapped(_ sender: UIButton) {
        // using closure
        // doNavigation()
        
        // using delegate
        delegate?.didNextTapped()
    }

}
