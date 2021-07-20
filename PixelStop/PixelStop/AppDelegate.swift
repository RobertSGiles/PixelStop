//
//  AppDelegate.swift
//  PixelStop
//
//  Created by Robert Giles on 20.07.21.
//

import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let setUserDefaults = [Achievement(title: "First", isCompleted: false), Achievement(title: "Second", isCompleted: false)]
        let encoder = JSONEncoder()
        if let encodedUser = try? encoder.encode(setUserDefaults) {
            UserDefaults.standard.set(encodedUser, forKey: "user")
        }
        
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        return true
    }
}
