//
//  Level0App.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
//

import SwiftUI
import SwiftData

@main
struct Level0App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            HomeView()
//            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
