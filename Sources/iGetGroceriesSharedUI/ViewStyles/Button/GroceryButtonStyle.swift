//
//  GroceryButtonStyle.swift
//  
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import SwiftUI

public struct GroceryButtonStyle: ButtonStyle {
    let style: Font.TextStyle
    let textColor: Color
    let disabled: Bool
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(5)
            .frame(maxWidth: .infinity)
            .withFont(style, textColor: textColor, autoSizeLineLimit: 1)
            .background(Color.darkGreen)
            .cornerRadius(8)
            .shadow(color: .black, radius: 4, x: 2, y: 2)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
            .disabled(disabled)
            .opacity(disabled ? 0.5 : 1)
    }
}

public extension ButtonStyle where Self == GroceryButtonStyle {
    static func groceryButtonStyle(_ style: Font.TextStyle = .body, textColor: Color = .white, disabled: Bool = false) -> GroceryButtonStyle {
        return .init(style: style, textColor: textColor, disabled: disabled)
    }
}
