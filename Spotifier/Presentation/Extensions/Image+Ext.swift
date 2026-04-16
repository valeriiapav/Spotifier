//
//  Image+Ext.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 16.04.2026.
//

import SwiftUI
import UIKit

extension Image {
    static func assetOrFallback(_ name: String, fallbackName: String) -> Image {
        if UIImage(named: name) != nil {
            return Image(name)
        } else {
            return Image(fallbackName)
        }
    }
    
    static func assetOrSystem(_ name: String, fallback systemName: String) -> Image {
        if UIImage(named: name) != nil {
            return Image(name)
        } else {
            return Image(systemName: systemName)
        }
    }
}
