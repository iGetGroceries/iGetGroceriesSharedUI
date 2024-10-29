//
//  TryButton.swift
//
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import SwiftUI
import NnSwiftUIKit

public struct TryButton<Label>: View where Label: View {
    @ViewBuilder var label: () -> Label
    
    let role: ButtonRole?
    let action: () throws -> Void
    
    public init(action: @escaping () throws -> Void, role: ButtonRole? = nil, label: @escaping () -> Label) {
        self.action = action
        self.label = label
        self.role = role
    }
    
    public var body: some View {
        NnTryButton(action: action, role: role, label: label)
    }
}


// MARK: - Helper Init
public extension TryButton where Label == Text {
    init<S>(_ title: S, role: ButtonRole? = nil, action: @escaping () throws -> Void) where S: StringProtocol {
        self.init(action: action, role: role, label: { Text(title) })
    }
}

