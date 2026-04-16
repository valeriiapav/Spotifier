//
//  View+Ext.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 17.04.2026.
//

import SwiftUI

extension View {
    func globalInjection() -> some View {
        modifier(GlobalInjectionVM())
    }
}

struct GlobalInjectionVM: ViewModifier {
    let playlistsManager: PlaylistsManager = PlaylistsManager.shared
    
    func body(content: Content) -> some View {
        content
            .environmentObject(playlistsManager)
    }
}
