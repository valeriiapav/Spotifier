//
//  SpotifierApp.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 16.04.2026.
//

import SwiftUI

@main
struct SpotifierApp: App {
    let playlistsManager: PlaylistsManager = PlaylistsManager.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(playlistsManager)
        }
    }
}
