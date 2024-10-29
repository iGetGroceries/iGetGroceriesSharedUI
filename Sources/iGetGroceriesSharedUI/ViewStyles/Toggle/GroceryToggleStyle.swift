//
//  GroceryToggleStyle.swift
//
//
//  Created by Nikolai Nobadi on 9/18/24.
//

import SwiftUI

public struct GroceryToggleStyle: ToggleStyle {
    let boldLabel: Bool
    let onColor: Color
    let offColor: Color
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            configuration.label
                .bold(boldLabel)
                
            Spacer()
            
            RoundedRectangle(cornerRadius: 16, style: .circular)
                .fill(configuration.isOn ? onColor : offColor)
                .frame(width: 50, height: 30)
                .overlay(
                    Circle()
                        .fill(.white)
                        .padding(2)
                        .offset(x: configuration.isOn ? 10 : -10)
                )
                .onTapGesture {
                    withAnimation(.smooth(duration: 0.2)) {
                        configuration.isOn.toggle()
                    }
                }
        }
    }
}

public extension ToggleStyle where Self == GroceryToggleStyle {
    /// Provides a custom grocery-themed `ToggleStyle` with specified boldness, on color, and off color.
    /// - Parameters:
    ///   - boldLabel: A Boolean value indicating whether the label text should be bold. Default is `false`.
    ///   - onColor: The color displayed when the toggle is on. Default is `.darkGreen`.
    ///   - offColor: The color displayed when the toggle is off. Default is `.gray`.
    /// - Returns: A `GroceryToggleStyle` configured with the specified properties.
    static func groceryToggleStyle(boldLabel: Bool = false, onColor: Color = .darkGreen, offColor: Color = .gray) -> GroceryToggleStyle {
        return .init(boldLabel: boldLabel, onColor: onColor, offColor: offColor)
    }
}
