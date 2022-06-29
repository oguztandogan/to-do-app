//
//  CoreDataStore.swift
//  CoreDataProject
//
//  Created by Oguz Tandogan on 25.05.2021.
//

import CoreData
import UIKit

class CoreDataStore {
    
    static var managedObjectContext: NSManagedObjectContext? {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            return appDelegate.persistentContainer.viewContext
        }
        return nil
    }
}
