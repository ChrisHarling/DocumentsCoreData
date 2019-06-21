//
//  Document+CoreDataProperties.swift
//  Documents
//
//  Created by Chris Harling on 6/20/19.
//  Copyright © 2019 Chris Harling. All rights reserved.
//
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var title: String?
    @NSManaged public var size: Double
    @NSManaged public var rawDate: NSDate?
    @NSManaged public var contents: String?

}
