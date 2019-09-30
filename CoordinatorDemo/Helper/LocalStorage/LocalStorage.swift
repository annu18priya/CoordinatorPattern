//
//  LocalStorage.swift
//  CoordinatorDemo
//
//  Created by annpriya on 30/09/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation

public enum StorgaeKey: String {
    case isFirstTimeLaunched = "isFirstTimeLaunched"
}

public class LocalStorage {
        
    public static func setIsFirstTimeLaunched(for value: Bool = true) {
        UserDefaults.standard.set(value, forKey: StorgaeKey.isFirstTimeLaunched.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    public static func getIsFirstTimeLaunched() -> Bool {
        return UserDefaults.standard.bool(forKey: StorgaeKey.isFirstTimeLaunched.rawValue)
    }

}

