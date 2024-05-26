//
//  DashboardAppApp.swift
//  DashboardApp
//
//

import SwiftUI

@main
struct DashboardAppApp: App {
    @StateObject private var networkManager = NetworkManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(networkManager)
        }
    }
}
