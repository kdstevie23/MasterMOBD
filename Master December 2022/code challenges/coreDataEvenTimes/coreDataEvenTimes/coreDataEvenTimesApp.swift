//
//  coreDataEvenTimesApp.swift
//  coreDataEvenTimes
//
//  Created by Steven Newman on 12/9/22.
//

import SwiftUI

@main
struct coreDataEvenTimesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
