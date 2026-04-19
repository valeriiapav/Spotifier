//
//  Tabs.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 19.04.2026.
//

import Foundation
import SwiftUI

enum Tabs: CaseIterable {
    case home
    case search
    case library
    case create
}

extension Tabs {
    var label: String {
        switch self {
        case .home: return "Home"
        case .search: return "Search"
        case .library: return "Library"
        case .create: return "Create"
        }
    }
    
    var iconSystemName: String {
        switch self {
        case .home: "house.fill"
        case .search: "magnifyingglass"
        case .library: "books.vertical"
        case .create: "plus"
        }
    }
}

extension Tabs {
    var buildView: () -> AnyView {
        switch self {
        case .home: { AnyView(HomeView()) }
        case .search: { AnyView(HomeView()) }
        case .library: { AnyView(HomeView()) }
        case .create: { AnyView(HomeView()) }
        }
    }
}
