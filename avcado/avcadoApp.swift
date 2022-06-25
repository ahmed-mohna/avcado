//
//  avcadoApp.swift
//  avcado
//
//  Created by Ahmed Mohna on 25/06/2022.
//

import SwiftUI

@main
struct avcadoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
