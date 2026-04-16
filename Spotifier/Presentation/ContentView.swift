//
//  ContentView.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 16.04.2026.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var playlistsManager: PlaylistsManager
    
    var body: some View {
        ZStack {
            Color.backgroundPrimary.ignoresSafeArea(edges: .all)
            
            VStack {
                ForEach(playlistsManager.playlists) { playlist in
                    playlist.cover
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
        .globalInjection()
}
