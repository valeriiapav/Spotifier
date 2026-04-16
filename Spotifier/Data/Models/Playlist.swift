//
//  Playlist.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 16.04.2026.
//

import Foundation

struct Playlist: Identifiable {
    let id: UUID
    let title: String
    let subtitle: String
    let coverName: String
    let songs: [Song]
}
