//
//  PlaylistsManager.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 17.04.2026.
//

import Combine
import Foundation

final class PlaylistsManager: ObservableObject {
    public static let shared = PlaylistsManager()
    
    @Published var playlists: [Playlist] = []
    
    private init() {
        loadPlaylists()
    }
    
    // MARK: - Mocks
    
    private func loadPlaylists() {
        guard let url = Bundle.main.url(forResource: "playlists", withExtension: "json") else {
            print("PlaylistsManager: Missing playlists.json in bundle")
            return
        }
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let decoded = try decoder.decode([Playlist].self, from: data)
            DispatchQueue.main.async { [weak self] in
                self?.playlists = decoded
            }
        } catch {
            print("PlaylistsManager: Failed to load/decode playlists.json with error: \(error)")
        }
    }
}

