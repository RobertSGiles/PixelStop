//
//  AchievementsModel.swift
//  PixelStop
//
//  Created by Robert Giles on 17.07.21.
//

import SwiftUI

struct Achievement {
    var isChecked: Bool
    var title: String
}

struct AchievementsModel {
    var achievements: [Achievement] = [Achievement(isChecked: false, title: "First"), Achievement(isChecked: false, title: "Second")]
    
    mutating func updatedAchievements(value: String)
    {
        if(value == achievements[0].title) {
            achievements[0].isChecked = true
        }
    }
    
    func getAchievementsArray() -> [Achievement]? {
        return self.achievements
    }
    
    // must fix non colour issue
    mutating func checkWinConditions(colourList: [Color]) {
        if colourList.count > 0 {
            if(colourList[0] == Color.red && colourList[1] == Color.red) {
                updatedAchievements(value: "First")
            }
        }
    }
}
