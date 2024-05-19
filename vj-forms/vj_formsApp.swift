//
//  vj_formsApp.swift
//  vj-forms
//
//  Created by Vanderley Junior on 18/05/24.
//

import SwiftUI

@main
struct vj_formsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SignUpView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
