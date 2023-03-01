//
//  testingApp.swift
//  testing
//
//  Created by Steven Newman on 1/3/23.
//

import SwiftUI

@main
struct testingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
