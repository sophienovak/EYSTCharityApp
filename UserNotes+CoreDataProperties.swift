//
//  UserNotes+CoreDataProperties.swift
//  EYST
//
//  Created by Sophie Novak on 27/03/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//
//

import Foundation
import CoreData


extension UserNotes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserNotes> {
        return NSFetchRequest<UserNotes>(entityName: "UserNotes")
    }

    @NSManaged public var notetext: String?

}
