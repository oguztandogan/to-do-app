//
//  ListPageFormatter.swift
//  CoreDataProject
//
//  Created by Oguz Tandogan on 24.05.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class ListPageFormatter {
    private var taskList: [Tasks] = []
}

// MARK: - Extensions -

extension ListPageFormatter: ListPageFormatterInterface {
    func deleteTask(index: Int) {
        taskList.remove(at: index)
    }
    
    func loadDeletedTask(index: Int) -> Tasks {
        let deletedTask = taskList[index]
        return deletedTask
    }
    
    func updateTaskList(taskList: [Tasks]){
        self.taskList = taskList
    }
    
    func loadTaskName(index: Int) -> String {
        return taskList[index].taskName ?? ""
    }
    
    func getNumberOfItems() -> Int {
        return taskList.count
    }
    
    func addTaskToList(task: Tasks) {
        self.taskList.append(task)
    }
    
    func getSelectedTask(index: Int) -> Tasks {
        return taskList[index]
    }
}