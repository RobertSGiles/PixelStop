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
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        UserDefaults.standard.removeObject(forKey: "achievements")
        UserDefaults.standard.synchronize()
        return true
    }
}
