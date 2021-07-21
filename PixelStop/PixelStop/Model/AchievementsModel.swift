//
//  AchievementsModel.swift
//  PixelStop
//
//  Created by Robert Giles on 17.07.21.
//

import SwiftUI
import CoreData

struct AchievementsModel {
    
    var achievements: [Achievement] = [Achievement(id: 0, title: "First", isCompleted: false),
                                       Achievement(id: 1, title: "Second", isCompleted: false),
                                       Achievement(id: 2, title: "Third", isCompleted: false),
                                       Achievement(id: 3, title: "Forth", isCompleted: false)]
    var achievedAchievements: [Achievement] = []
    let defaults = UserDefaults.standard
    
    mutating func getAchievedAchivements() -> [Achievement] {
        if let savedAchievements = defaults.object(forKey: "achievements") as? Data {
            let decoder = JSONDecoder()
            if let userAchievements = try? decoder.decode([Achievement].self, from: savedAchievements) {
                achievedAchievements = userAchievements
            }
        }
        return achievedAchievements
    }
    
    // must fix non colour issue
    mutating func checkWinConditions(colourList: [Color]) {
        if colourList.count > 0 {
            updatedAchievements(id: 0)
            updatedAchievements(id: 4)
        }
    }
    
    mutating func updatedAchievements(id: Int) {
        if var achieve = achievements.first(where: { $0.id == id }) {
            achieve.isCompleted = true
            achievedAchievements.append(achieve)
        }
        let encoder = JSONEncoder()
        if let encodedUser = try? encoder.encode(achievedAchievements) {
            defaults.set(encodedUser, forKey: "achievements")
        }
    }
    
    mutating func getAllAchievements() -> [Achievement] {
        let value = getAchievedAchivements()
        var temp: [Achievement] = []
        var count: Int = 0
        for item in achievements {
            for item2 in value {
                if (item.id == item2.id) {
                    temp.append(item2)
                    break
                }
            }
            count += 1
            
            if count > temp.count {
                temp.append(achievements[count - 1])
            }
            
        }
        
        if temp.count == 0 {
            temp = achievements
        }
        
        return temp
    }
}
