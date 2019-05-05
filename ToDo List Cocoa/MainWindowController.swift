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
    
    
    private var taskList : [String] = ["Huguinho", "Zezinho", "Luizinho"]
    
    @IBOutlet private weak var textBox: NSTextField!
    @IBOutlet private weak var tasksTableView: NSTableView!
    
    
    
    
    
    @IBAction func addTaskButton(_ sender: NSButton)
    {
        let tarefa = textBox.stringValue
        
        print("Adicionando tarefa: \(tarefa)")
        
        taskList.append(tarefa)
        updateUI()
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
    
    private func updateUI()
    {
        print(taskList.count)
        tasksTableView.reloadData()
    }
    
    //MARK: NSTableViewDataSource
    func numberOfRows(in tableView: NSTableView) -> Int
    {
        return taskList.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any?
    {
        return taskList[row]
    }
    
    //MARK: NSTableViewDelegate
    
    func tableViewSelectionDidChange(_ notification: Notification)
    {
        // TODO: Implementar código para editar tarefa quando for selecionada na Table View
        print("tableViewSelectionDidChange")
    }
    
}
