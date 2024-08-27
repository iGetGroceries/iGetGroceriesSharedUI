//
//  RoundedShadowBorderViewModifier.swift
//
//
//  Created by Nikolai Nobadi on 8/27/24.
//

import SwiftUI

struct RoundedShadowBorderViewModifier: ViewModifier {
    var backgroundColor: Color
    var shadowColor: Color
    var cornerRadius: CGFloat
    var shadowRadius: CGFloat
    var isActive: Bool

    func body(content: Content) -> some View {
        if isActive {
            content
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                .padding(1)
                .background(Color.primary)
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                .shadow(color: shadowColor, radius: shadowRadius)
        } else {
            content
        }
    }
}

public extension View {
    func withRoundedShadowBorder(backgroundColor: Color = .lightGreen, shadowColor: Color = .primary, cornerRadius: CGFloat = 10, shadowRadius: CGFloat = 2, isActive: Bool = true) -> some View {
        self.modifier(RoundedShadowBorderViewModifier(backgroundColor: backgroundColor, shadowColor: shadowColor, cornerRadius: cornerRadius, shadowRadius: shadowRadius, isActive: isActive))
    }
}
