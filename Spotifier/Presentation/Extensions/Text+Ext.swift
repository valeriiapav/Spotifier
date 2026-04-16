//
//  Text+Ext.swift
//  Spotifier
//
//  Created by Valeriia Pavlykovych on 17.04.2026.
//

import SwiftUI

extension Text {
    func applyFontDMSans(size: CGFloat) -> Text {
        return self
            .font(.custom("DMSans-9ptRegular", size: size))
    }
    
    func applyFontDMSansItalic(size: CGFloat) -> Text {
        return self
            .font(.custom("DMSans-9ptItalic", size: size))
    }
}
