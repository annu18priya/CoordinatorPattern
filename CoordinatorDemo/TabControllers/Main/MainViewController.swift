//
//  MainViewController.swift
//  CoordinatorDemo
//
//  Created by annpriya on 25/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {
    
    /// Using Closure
    internal var doNavigation: ((Main) -> Void) = { _ in }
    
    weak var coordinator: MainCoordinator?
    private var mainObj: Main?

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    
    private func loadData() {
        Main.fetch { [weak self] (_ main: Main?, _ error: Error?) in
//            debugPrint(">>>> : \(main?.dataPayload.count)")
//            debugPrint(">>>> : \(main?.dataPayload[0].timeSlot)")
//            debugPrint(">>>> : \(main?.dataPayload[0].timeSlotDetails.count)")
//            debugPrint(">>>> : \(main?.dataPayload[0].timeSlotDetails[0].medicineName)")
            self?.mainObj = main
        }
    }

    /// Click Event
    
    @IBAction private func btnTapped(_ sender: UIButton) {
        guard let main = mainObj else { fatalError() }
        doNavigation(main)
    }
    
}
