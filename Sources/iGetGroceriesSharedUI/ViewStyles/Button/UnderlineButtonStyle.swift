//
//  UnderlineButtonStyle.swift
//
//
//  Created by Nikolai Nobadi on 9/15/24.
//

import SwiftUI

public struct UnderlineButtonStyle: ButtonStyle {
    let style: Font.TextStyle
    let textColor: Color

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .underline()
            .withFont(style, textColor: textColor)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

public extension ButtonStyle where Self == UnderlineButtonStyle {
    /// Provides an underlined button style with specified font style and text color.
    /// - Parameters:
    ///   - style: The font style to apply to the button text. Default is `.caption`.
    ///   - textColor: The color of the button text. Default is `.darkGreen`.
    /// - Returns: An `UnderlineButtonStyle` with the specified font and text color.
    static func underlineButtonStyle(_ style: Font.TextStyle = .caption, textColor: Color = .darkGreen) -> UnderlineButtonStyle {
        return .init(style: style, textColor: textColor)
    }
}
