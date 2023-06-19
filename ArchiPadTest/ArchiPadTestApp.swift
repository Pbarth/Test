//
//  ArchiPadTestApp.swift
//  ArchiPadTest
//
//  Created by Pierre BARTHELEMY on 14/06/2023.
//

import SwiftUI

@main
struct ArchiPadTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ProjectGridView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
