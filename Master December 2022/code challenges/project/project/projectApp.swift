//
//  projectApp.swift
//  project
//
//  Created by Steven Newman on 12/21/22.
//

import SwiftUI

@main
struct projectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
