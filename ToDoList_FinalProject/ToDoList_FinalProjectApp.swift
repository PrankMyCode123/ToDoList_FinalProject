//
//  ToDoList_FinalProjectApp.swift
//  ToDoList_FinalProject
//
//  Created by Phương An on 21/06/2024.
//

import SwiftUI

@main
struct ToDoList_FinalProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
