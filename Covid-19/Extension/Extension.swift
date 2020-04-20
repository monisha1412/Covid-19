//
//  Extension.swift
//  Covid-19
//
//  Created by monica s b on 20/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import Foundation
import CoreData
import UIKit

extension UIViewController {
    
    // Mark:- Saving Data in the DB
    func insertRecordsIntoTable<T:NSManagedObject>(table:String, Object:T){
        let context = CoreDataStack.shared.context
        do{
            context.insert(Object)
            try context.save()
        }
        catch let error as NSError {
            print("Cannot Fetch \(error) and \(error.userInfo)")
        }
    }
    
    //Mark:- Fetching the countries
    func fetchingTheCountries() -> [Countries] {
        var allUsers:[Countries] = []
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest:NSFetchRequest<Countries> = Countries.fetchRequest()
        do {
            let objects  = try context.fetch(fetchRequest)
            allUsers = objects
        } catch let error {
            print("ERROR DELETING : \(error)")
        }
        return allUsers
    }
    
}
