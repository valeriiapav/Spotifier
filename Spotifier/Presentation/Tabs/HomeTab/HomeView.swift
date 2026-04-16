//
//  HomeView.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 17.04.2026.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var playlistsManager: PlaylistsManager
    
    var body: some View {
        VStack {
            PlaylistView { playlistTapped in
                // TODO: open playlist
                print("\(playlistTapped.title) playlist tapped")
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .globalInjection()
}
