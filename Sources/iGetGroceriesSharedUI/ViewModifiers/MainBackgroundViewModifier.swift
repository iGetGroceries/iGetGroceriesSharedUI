//
//  MainBackgroundViewModifier.swift
//
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import SwiftUI

struct MainBackgroundViewModifier: ViewModifier {
    let alignment: Alignment
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: alignment)
            .background(Color.lightGreen)
    }
}

public extension View {
    /// Applies a light green background with full frame size and specified alignment.
    /// - Parameter alignment: The alignment of the content within the view. Default is `.top`.
    /// - Returns: A view with a light green background and specified alignment.
    func mainBackground(alignment: Alignment = .top) -> some View {
        modifier(MainBackgroundViewModifier(alignment: alignment))
    }
}
