//
//  AchievementsModel.swift
//  PixelStop
//
//  Created by Robert Giles on 17.07.21.
//

import SwiftUI
import CoreData

struct AchievementsModel {
    
//    mutating func updatedAchievements(value: String)
//    {
//
//    }
    
//    mutating func getAchievementsArray(with request: NSFetchRequest<Achievement> = Achievement.fetchRequest(), predicate: NSPredicate? = nil) -> [Achievement]{
//
//        do {
//            achievementArray = try context.fetch(request)
//        } catch {
//            print("Error fetching data from context \(error)")
//        }
//
//        return achievementArray
//    }
    
    // must fix non colour issue
    mutating func checkWinConditions(colourList: [Color]) {
        if colourList.count > 0 {
            if(colourList[0] == Color.red && colourList[1] == Color.red) {
                //updatedAchievements(value: "First")
            }
        }
    }
}
