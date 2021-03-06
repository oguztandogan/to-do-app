//
//  ListPageInteractor.swift
//  CoreDataProject
//
//  Created by Oguz Tandogan on 24.05.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import UIKit
import CoreData

final class ListPageInteractor {
}

// MARK: - Extensions -

extension ListPageInteractor: ListPageInteractorInterface {
    
    func createItem(listItem: String, completion: @escaping (NSManagedObject) -> ()) {
        guard let managedContext = CoreDataStore.managedObjectContext else { return }
        let entity = NSEntityDescription.entity(forEntityName: "Tasks", in: managedContext)!
        let item = NSManagedObject(entity: entity, insertInto: managedContext)
        item.setValue(listItem, forKey: "taskName")
        do{
            try managedContext.save()
            completion(item)
        } catch let error{
            print("Item can't be created: \(error.localizedDescription)")
        }
    }
    
    func fetchItems(completion: @escaping (([Tasks]) -> ())) {
        guard let managedContext = CoreDataStore.managedObjectContext else { return }
        let fetchRequest = NSFetchRequest<Tasks>(entityName: String(describing: Tasks.self))
        fetchRequest.returnsObjectsAsFaults = false
        do {
            let fetchResults = try managedContext.fetch(fetchRequest)
            completion(fetchResults)
            
        } catch let error{
            print(error.localizedDescription)
        }
    }
    
    func deleteItem(deletedTask: NSManagedObject) {
        guard let managedContext = CoreDataStore.managedObjectContext else { return }
        
        
        let fetchedRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Tasks")
        fetchedRequest.returnsObjectsAsFaults = false
        do {
            managedContext.delete(deletedTask)
            try managedContext.save()
            
        } catch let error{
            print(error.localizedDescription)
        }
    }
}
