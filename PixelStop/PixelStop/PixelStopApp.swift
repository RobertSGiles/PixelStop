//
//  PixelStopApp.swift
//  PixelStop
//
//  Created by Robert Giles on 28.06.21.
//

import SwiftUI

@main
struct PixelStopApp: App {
    
    let persistanceContainer = PersistanceController.shared

    // Fix persistance error
    // Insert with text file into DataModel
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistanceContainer.container.viewContext)
        }
    }
}
