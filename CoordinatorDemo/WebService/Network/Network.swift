//
//  Network.swift
//  CoordinatorDemo
//
//  Created by annpriya on 03/10/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation
import UIKit

public typealias NetworkRouterCompletion = (_ data: Data?, _ error: Error?) -> ()

protocol NetworkRouter: class {
    func apiRequest(method: ) -> <#return type#> {
    <#function body#>
    }
}


