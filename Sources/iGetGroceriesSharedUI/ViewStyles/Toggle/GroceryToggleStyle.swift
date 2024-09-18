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
    static func groceryToggleStyle(boldLabel: Bool = false, onColor: Color = .darkGreen, offColor: Color = .gray) -> GroceryToggleStyle {
        return .init(boldLabel: boldLabel, onColor: onColor, offColor: offColor)
    }
}



