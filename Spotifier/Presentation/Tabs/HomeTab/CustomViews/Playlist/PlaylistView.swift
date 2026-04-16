//
//  PlaylistView.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 17.04.2026.
//

import SwiftUI

struct PlaylistView: View {
    @EnvironmentObject var playlistsManager: PlaylistsManager
    
    let callback: (Playlist) -> Void
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
            ForEach(playlistsManager.playlists) { playlist in
                
                PlaylistItem(playlist: playlist)
                    .onTapGesture {
                        callback(playlist)
                    }
            }
        }
    }
}
