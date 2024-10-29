//
//  PreviewModifiersViewModifier.swift
//
//
//  Created by Nikolai Nobadi on 8/28/24.
//

import SwiftUI
import NnSwiftUIKit

struct PreviewModifiersViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .withErrorHandling()
            .environment(\.isPreview, true)
    }
}

public extension View {
    /// Adds error handling and preview-specific configurations to the view.
    /// - Returns: A view configured with error handling and preview-specific settings.
    func withPreviewModifiers() -> some View {
        modifier(PreviewModifiersViewModifier())
    }
}
