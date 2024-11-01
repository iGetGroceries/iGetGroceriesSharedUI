//
//  CategoryColor.swift
//  
//
//  Created by Nikolai Nobadi on 10/1/24.
//

import SwiftUI

/// Enumeration for defining category colors with associated SwiftUI Color values.
public enum CategoryColor: String, CaseIterable {
    case red, pink, green, blue, yellow, white, brown, cyan, gray, indigo, orange, mint, purple, teal
}

public extension CategoryColor {
    /// Returns the corresponding SwiftUI Color for each category color case.
    var color: Color {
        switch self {
        case .red: return .red
        case .green: return .green
        case .blue: return .blue
        case .yellow: return .yellow
        case .white: return .white
        case .brown: return .brown
        case .cyan: return .cyan
        case .gray: return .gray
        case .indigo: return .indigo
        case .orange: return .orange
        case .mint: return .mint
        case .pink: return .pink
        case .purple: return .purple
        case .teal: return .teal
        }
    }
}
