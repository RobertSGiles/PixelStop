//
//  AchievementsModel.swift
//  PixelStop
//
//  Created by Robert Giles on 17.07.21.
//

import SwiftUI
import CoreData

struct AchievementsModel {
    
    var achievementsArray: [Achievement] = []
    let defaults = UserDefaults.standard
    
    mutating func getAchievementsArray() -> [Achievement] {
        if let savedAchievements = defaults.object(forKey: "user") as? Data {
            let decoder = JSONDecoder()
            if let userAchievements = try? decoder.decode([Achievement].self, from: savedAchievements) {
                achievementsArray = userAchievements
            }
        }
        return achievementsArray
    }
    
    // must fix non colour issue
    mutating func checkWinConditions(colourList: [Color]) {
        if colourList.count > 0 {
            if(true) {
                updatedAchievements()
            }
        }
    }
    
    mutating func updatedAchievements( ) {
        var setUserDefaults = getAchievementsArray()
        setUserDefaults[0].isCompleted = true
        let encoder = JSONEncoder()
        if let encodedUser = try? encoder.encode(setUserDefaults) {
            defaults.set(encodedUser, forKey: "user")
        }
    }
}
