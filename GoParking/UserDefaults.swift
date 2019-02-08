//
//  UserDefaults.swift
//  TeamPlusApp
//
//  Created by Ammar AlTahhan on 25/01/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    var isLoggedIn: Bool {
        return string(forKey: Constants.UserDefaults.Token) != nil
    }
    
    var isNotFirstTime: Bool {
        let value = bool(forKey: Constants.UserDefaults.IsFirstTime)
        set(true, forKey: Constants.UserDefaults.IsFirstTime)
        return value
    }
    
    var token: String? {
        get {
            return string(forKey: Constants.UserDefaults.Token)
        }
        set {
            set(newValue, forKey: Constants.UserDefaults.Token)
        }
    }
    
}
