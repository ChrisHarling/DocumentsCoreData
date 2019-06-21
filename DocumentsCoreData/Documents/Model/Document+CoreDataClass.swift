//
//  Document+CoreDataClass.swift
//  Documents
//
//  Created by Chris Harling on 6/20/19.
//  Copyright © 2019 Chris Harling. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Document)
public class Document: NSManagedObject {
    var lastModified: Date? {
        get {
            return rawDate as Date?
        }
        set {
            rawDate = newValue as NSDate?
        }
    }
    
    convenience init?(title: String?, contents: String?, lastModified: Date?, size: Double) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Document.entity(), insertInto: managedContext)
        
        self.title = title
        self.contents = contents
        self.lastModified = lastModified
        self.size = size
    }
}
