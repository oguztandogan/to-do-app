//
//  TaskDetailInterfaces.swift
//  CoreDataProject
//
//  Created by Oguz Tandogan on 24.05.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import CoreData

protocol TaskDetailWireframeInterface: WireframeInterface {
    func navigateToTasksList()
}

protocol TaskDetailViewInterface {
}

protocol TaskDetailPresenterInterface {
    func getTaskName() -> String
    func getTaskDetail() -> String
    func deleteTask()
    func getChangedTaskName(taskName: String, taskDetail: String)
}

protocol TaskDetailFormatterInterface {
}

protocol TaskDetailInteractorInterface {
    func deleteItem(deletedTask: NSManagedObject, completion: @escaping () -> ())
    func updateItem(updatedTask: NSManagedObject,
                    newTaskName: String,
                    newTaskDetail: String)
}
