//
//  Constants.swift
//  TeamPlusApp
//
//  Created by Ammar AlTahhan on 22/01/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    struct Storyboard {
        static let Login = UIStoryboard(name: "Login", bundle: Bundle.main)
        static let Main = UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    struct UserDefaults {
        static let IsFirstTime = "isFirstTime"
        static let Token = "token"
    }
    
    struct API {
        private static let Base = "http://128.199.164.215/api/v1/"
        
        static let Login = Base + "login"
        static let Signup = Base + "register"
        static let MyCourses = Base + "myCourses"
        static let ShowCourseWithCode = Base + "showCourseWithCode"
        static let JoinCourse = Base + "joinCourse"
        static let ShowCourseTeams = Base + "showCourse"
    }
}
