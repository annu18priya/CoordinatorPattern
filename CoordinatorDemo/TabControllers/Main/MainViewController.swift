//
//  MainViewController.swift
//  CoordinatorDemo
//
//  Created by annpriya on 25/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        loadData()
    }
    
    
    private func loadData() {
        Main.fetch { (_ main: Main?, _ error: Error?) in
            debugPrint(main?.payloadJSON)
        }
    }

}
