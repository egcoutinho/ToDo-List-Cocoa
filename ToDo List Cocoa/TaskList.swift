//
//  TaskList.swift
//  ToDo List Cocoa
//
//  Created by Eduardo G. Coutinho on 04/05/19.
//  Copyright © 2019 CyberShark. All rights reserved.
//

import Foundation

class TaskList
{
    private var tasks: [String] = []
   
   
    
    func add(task: String)
    {
        tasks.append(task)
    }
    
}
