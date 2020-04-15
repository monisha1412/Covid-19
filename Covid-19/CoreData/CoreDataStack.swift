//
//  CoreDataStack.swift
//  Covid-19
//
//  Created by monica s b on 13/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    private init(){}
    
    static let shared = CoreDataStack()
    
    var context:NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Covid-19")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}
