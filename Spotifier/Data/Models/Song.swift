//
//  Song.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 16.04.2026.
//

import Foundation

struct Song: Identifiable, Codable {
    let id: Int
    let title: String
    let artist: Artist
    let durationSeconds: Int
    let artworkName: String
    let audioFileName: String?
}
