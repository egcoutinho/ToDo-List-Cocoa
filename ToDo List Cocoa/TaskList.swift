//
//  TaskList.swift
//  ToDo List Cocoa
//
//  Created by Eduardo G. Coutinho on 04/05/19.
//  Copyright © 2019 CyberShark. All rights reserved.
//

import Foundation

struct TaskList
{
    var tasks: [String] = []
   
   
    
    mutating func add(task: String)
    {
        tasks.append(task)
    }
    
}
