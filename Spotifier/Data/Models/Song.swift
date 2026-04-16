//
//  Song.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 16.04.2026.
//

import Foundation

struct Song: Identifiable {
    let id: UUID
    let title: String
    let artist: String
    let duration: TimeInterval
    let artworkName: String
    let audioFileName: String?
}
