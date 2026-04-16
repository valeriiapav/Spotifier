//
//  ContentView.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 16.04.2026.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.backgroundPrimary.ignoresSafeArea(edges: .all)
            
            HomeView()
        }
    }
}

#Preview {
    ContentView()
        .globalInjection()
}
