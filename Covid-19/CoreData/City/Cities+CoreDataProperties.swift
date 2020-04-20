//
//  Cities+CoreDataProperties.swift
//  Covid-19
//
//  Created by monica s b on 20/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//
//

import Foundation
import CoreData


extension Cities {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cities> {
        return NSFetchRequest<Cities>(entityName: "Cities")
    }

    @NSManaged public var name: String?
    @NSManaged public var state: States?

}
