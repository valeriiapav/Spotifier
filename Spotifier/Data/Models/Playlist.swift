//
//  Playlist.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 16.04.2026.
//

import Foundation
import SwiftUI

struct Playlist: Identifiable, Codable {
    let id: Int
    let title: String
    let subtitle: String
    let songs: [Song]
    let coverName: String
}

extension Playlist {
    var cover: Image {
        Image.assetOrFallback(coverName, fallbackName: "playlist_placeholder")
    }
}

