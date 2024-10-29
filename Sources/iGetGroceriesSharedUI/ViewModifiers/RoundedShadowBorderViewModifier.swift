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
    /// Adds a rounded shadow border with customizable background and shadow colors, corner radius, and shadow radius.
    /// - Parameters:
    ///   - backgroundColor: The color of the background within the rounded border. Default is `.lightGreen`.
    ///   - shadowColor: The color of the shadow around the border. Default is `.primary`.
    ///   - cornerRadius: The corner radius of the border. Default is `10`.
    ///   - shadowRadius: The radius of the shadow. Default is `2`.
    ///   - isActive: A Boolean value that determines if the border is applied. Default is `true`.
    /// - Returns: A view with a rounded shadow border applied.
    func withRoundedShadowBorder(backgroundColor: Color = .lightGreen, shadowColor: Color = .primary, cornerRadius: CGFloat = 10, shadowRadius: CGFloat = 2, isActive: Bool = true) -> some View {
        self.modifier(RoundedShadowBorderViewModifier(backgroundColor: backgroundColor, shadowColor: shadowColor, cornerRadius: cornerRadius, shadowRadius: shadowRadius, isActive: isActive))
    }
}
