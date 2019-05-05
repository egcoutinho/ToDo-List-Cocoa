//
//  MainWindowController.swift
//  ToDo List Cocoa
//
//  Created by Eduardo G. Coutinho on 04/05/19.
//  Copyright © 2019 CyberShark. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSTableViewDelegate, NSTableViewDataSource
{
    
    var taskList = TaskList()
    
    @IBOutlet weak var textBox: NSTextField!
    @IBOutlet weak var tasksTableView: NSTableView!
    
    
    
    
    
    @IBAction func addTaskButton(_ sender: NSButton)
    {
        let tarefa = textBox.stringValue
        
        print("Adicionando tarefa: \(tarefa)")
        
        taskList.add(task: tarefa)
    }
    
    override var windowNibName: NSNib.Name?
    {
        return "MainWindowController"
    }

    override func windowDidLoad()
    {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
}
