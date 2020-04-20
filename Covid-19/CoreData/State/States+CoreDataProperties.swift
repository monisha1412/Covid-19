//
//  States+CoreDataProperties.swift
//  Covid-19
//
//  Created by monica s b on 20/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//
//

import Foundation
import CoreData


extension States {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<States> {
        return NSFetchRequest<States>(entityName: "States")
    }

    @NSManaged public var name: String?
    @NSManaged public var countries: Countries?
    @NSManaged public var data: NSOrderedSet?

}

// MARK: Generated accessors for data
extension States {

    @objc(insertObject:inDataAtIndex:)
    @NSManaged public func insertIntoData(_ value: Cities, at idx: Int)

    @objc(removeObjectFromDataAtIndex:)
    @NSManaged public func removeFromData(at idx: Int)

    @objc(insertData:atIndexes:)
    @NSManaged public func insertIntoData(_ values: [Cities], at indexes: NSIndexSet)

    @objc(removeDataAtIndexes:)
    @NSManaged public func removeFromData(at indexes: NSIndexSet)

    @objc(replaceObjectInDataAtIndex:withObject:)
    @NSManaged public func replaceData(at idx: Int, with value: Cities)

    @objc(replaceDataAtIndexes:withData:)
    @NSManaged public func replaceData(at indexes: NSIndexSet, with values: [Cities])

    @objc(addDataObject:)
    @NSManaged public func addToData(_ value: Cities)

    @objc(removeDataObject:)
    @NSManaged public func removeFromData(_ value: Cities)

    @objc(addData:)
    @NSManaged public func addToData(_ values: NSOrderedSet)

    @objc(removeData:)
    @NSManaged public func removeFromData(_ values: NSOrderedSet)

}
