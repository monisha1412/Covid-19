//
//  Countries+CoreDataProperties.swift
//  Covid-19
//
//  Created by monica s b on 20/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//
//

import Foundation
import CoreData


extension Countries {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Countries> {
        return NSFetchRequest<Countries>(entityName: "Countries")
    }

    @NSManaged public var name: String?
    @NSManaged public var states: NSOrderedSet?

}

// MARK: Generated accessors for states
extension Countries {

    @objc(insertObject:inStatesAtIndex:)
    @NSManaged public func insertIntoStates(_ value: States, at idx: Int)

    @objc(removeObjectFromStatesAtIndex:)
    @NSManaged public func removeFromStates(at idx: Int)

    @objc(insertStates:atIndexes:)
    @NSManaged public func insertIntoStates(_ values: [States], at indexes: NSIndexSet)

    @objc(removeStatesAtIndexes:)
    @NSManaged public func removeFromStates(at indexes: NSIndexSet)

    @objc(replaceObjectInStatesAtIndex:withObject:)
    @NSManaged public func replaceStates(at idx: Int, with value: States)

    @objc(replaceStatesAtIndexes:withStates:)
    @NSManaged public func replaceStates(at indexes: NSIndexSet, with values: [States])

    @objc(addStatesObject:)
    @NSManaged public func addToStates(_ value: States)

    @objc(removeStatesObject:)
    @NSManaged public func removeFromStates(_ value: States)

    @objc(addStates:)
    @NSManaged public func addToStates(_ values: NSOrderedSet)

    @objc(removeStates:)
    @NSManaged public func removeFromStates(_ values: NSOrderedSet)

}
