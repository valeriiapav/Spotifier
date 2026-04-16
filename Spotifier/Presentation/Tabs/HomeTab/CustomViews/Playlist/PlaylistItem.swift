//
//  PlaylistItem.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 17.04.2026.
//

import SwiftUI

struct PlaylistItem: View {
    let playlist: Playlist
    
    var body: some View {
        HStack {
            playlist.cover
                .resizable()
                .scaledToFit()
                .mask(RoundedRectangle(cornerRadius: 6))
            
            Text(playlist.title)
                .foregroundStyle(.labelPrimary)
                .applyFontDMSans(size: 14)
                .fontWeight(.bold)
            
            Spacer()
        }
        .frame(height: 50)
        .background(Color.backgroundSecondary)
        .cornerRadius(6)
    }
}
