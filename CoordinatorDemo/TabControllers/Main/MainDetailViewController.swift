//
//  MainDetailViewController.swift
//  CoordinatorDemo
//
//  Created by annpriya on 04/10/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import UIKit

class MainDetailViewController: UIViewController, Storyboarded {
    
    public var mainObj: Main?

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("MainDetailViewController :\(mainObj?.dataPayload[0].timeSlotDetails[0].medicineName)")
        // Do any additional setup after loading the view.
    }
    

}
