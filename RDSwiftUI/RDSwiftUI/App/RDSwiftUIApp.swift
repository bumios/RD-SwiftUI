//
//  RDSwiftUIApp.swift
//  RDSwiftUI
//
//  Created by Duy Tran N. on 18/07/2022.
//

import SwiftUI

@main
struct RDSwiftUIApp: App {

    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif

        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif

        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
