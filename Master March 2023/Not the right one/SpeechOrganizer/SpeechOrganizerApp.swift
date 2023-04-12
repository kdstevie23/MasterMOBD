//
//  SpeechOrganizerApp.swift
//  SpeechOrganizer
//
//  Created by Steven Newman on 3/30/23.
//

import SwiftUI

@main
struct SpeechOrganizerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
