//
//  ContentView.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 16.04.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tabs = .home
    
    var body: some View {
        ZStack {
            Color.backgroundPrimary.ignoresSafeArea(edges: .all)
            
            TabView(selection: $selectedTab) {
                ForEach(Tabs.allCases, id: \.self) { tab in
                    NavigationStack {
                        tab.buildView()
                    }
                    .tabItem {
                        Label(tab.label, systemImage: tab.iconSystemName)
                    }
                    .tag(tab)
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .globalInjection()
}
