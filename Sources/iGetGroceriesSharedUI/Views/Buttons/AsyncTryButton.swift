//
//  AsyncTryButton.swift
//
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import SwiftUI
import NnSwiftUIKit

public struct AsyncTryButton<Label>: View where Label: View {
    @ViewBuilder var label: () -> Label

    let role: ButtonRole?
    let action: () async throws -> Void

    public init(action: @escaping () async throws -> Void, role: ButtonRole? = nil, label: @escaping () -> Label) {
        self.action = action
        self.label = label
        self.role = role
    }

    public var body: some View {
        NnAsyncTryButton(action: action, label: label)
    }
}


public extension AsyncTryButton where Label == Text {
    init<S>(_ title: S, role: ButtonRole? = nil, action: @escaping () async throws -> Void) where S: StringProtocol {
        self.init(action: action, role: role, label: { Text(title) })
    }

    init(_ titleKey: LocalizedStringKey, role: ButtonRole? = nil, action: @escaping () async throws -> Void) {
        self.init(action: action, role: role, label: { Text(titleKey) })
    }
}
