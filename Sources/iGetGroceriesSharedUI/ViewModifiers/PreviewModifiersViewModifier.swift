//
//  PreviewModifiersViewModifier.swift
//
//
//  Created by Nikolai Nobadi on 8/28/24.
//

import SwiftUI

struct PreviewModifiersViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .withErrorHandling()
            .environment(\.isPreview, true)
    }
}

public extension View {
    func withPreviewModifiers() -> some View {
        modifier(PreviewModifiersViewModifier())
    }
}
