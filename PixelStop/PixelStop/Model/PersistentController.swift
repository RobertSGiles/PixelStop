//
//  PersistentController.swift
//  PixelStop
//
//  Created by Robert Giles on 18.07.21.
//

import CoreData

struct PersistanceController {
    
    static let shared = PersistanceController()
    
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "DataModel")
        
        container.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                fatalError("Unresoved error \(error)")
            }
        }
    }
    
}
