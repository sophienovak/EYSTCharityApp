//
//  ContactUs+CoreDataProperties.swift
//  EYST
//
//  Created by Sophie Novak on 28/03/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//
//

import Foundation
import CoreData


extension ContactUs {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ContactUs> {
        return NSFetchRequest<ContactUs>(entityName: "ContactUs")
    }

    @NSManaged public var notecontact: String?

}
