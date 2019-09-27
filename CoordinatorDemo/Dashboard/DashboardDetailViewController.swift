//
//  DashboardDetailViewController.swift
//  CoordinatorDemo
//
//  Created by annpriya on 25/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

class DashboardDetailViewController: UIViewController, Storyboarded {
    
    internal var navigateToTabController: () -> Void = { }
    public var str: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint(str)
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func btnTapped(_ sender: UIButton) {
       navigateToTabController()
    }

}
