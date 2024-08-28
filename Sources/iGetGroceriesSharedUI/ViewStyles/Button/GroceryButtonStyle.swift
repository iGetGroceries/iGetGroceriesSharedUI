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
    let tint: Color
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(5)
            .frame(maxWidth: .infinity)
            .withFont(style, textColor: textColor, autoSizeLineLimit: 1)
            .background(tint)
            .cornerRadius(8)
            .shadow(color: .black, radius: 4, x: 2, y: 2)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

public extension ButtonStyle where Self == GroceryButtonStyle {
    static func groceryButtonStyle(_ style: Font.TextStyle = .body, textColor: Color = .white, tint: Color = .darkGreen) -> GroceryButtonStyle {
        return .init(style: style, textColor: textColor, tint: tint)
    }
}
