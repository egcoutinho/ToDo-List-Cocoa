//
//  AppDelegate.swift
//  ToDo List Cocoa
//
//  Created by Eduardo G. Coutinho on 04/05/19.
//  Copyright © 2019 CyberShark. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    private var mainWindowController: MainWindowController?


    func applicationDidFinishLaunching(_ aNotification: Notification)
    {
        let window = MainWindowController()
        window.showWindow(self)
        
        mainWindowController = window
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

