//
//  CircleAddButtonViewModifier.swift
//
//
//  Created by Nikolai Nobadi on 8/27/24.
//

import SwiftUI
import NnSwiftUIKit

struct CircleAddButtonViewModifier: ViewModifier {
    @Binding var isShowing: Bool
    
    let buttonSize: CGFloat
    let action: () throws -> Void
    
    func body(content: Content) -> some View {
        content
            .overlay(alignment: .bottom) {
                if isShowing {
                    TryButton(action: action) {
                        Image(systemName: "plus")
                            .withFont(.title3, textColor: .white)
                    }
                    .tint(.darkGreen)
                    .buttonStyle(.borderedProminent)
                    .clipShape(Circle())
                    .shadow(color: .primary, radius: 7)
                    .padding()
                    .transition(.move(edge: .bottom))
                }
            }
    }
}

public extension View {
    func withCircleAddButton(isShowing: Binding<Bool>, action: @escaping () throws -> Void) -> some View {
        modifier(CircleAddButtonViewModifier(isShowing: isShowing, buttonSize: getHeightPercent(8), action: action))
    }
}
