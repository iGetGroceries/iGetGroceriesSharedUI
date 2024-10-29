//
//  GroceryFieldStyle.swift
//
//
//  Created by Nikolai Nobadi on 9/18/24.
//

import SwiftUI

public struct GroceryFieldStyle: TextFieldStyle {
    let alignment: TextAlignment
    let keyboardType: UIKeyboardType
    
    
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .tint(.darkGreen)
            .background(Color.lightGreen)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(1)
            .background(Color.primary)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .black, radius: 2)
            .autocorrectionDisabled(true)
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(alignment)
            .keyboardType(keyboardType)
            .autocapitalization(.none)
    }
}

public extension TextFieldStyle where Self == GroceryFieldStyle {
    /// Provides a custom grocery-themed `TextFieldStyle` with specified text alignment and keyboard type.
    /// - Parameters:
    ///   - alignment: The alignment of text within the text field. Default is `.center`.
    ///   - keyboardType: The type of keyboard to display when the text field is active. Default is `.alphabet`.
    /// - Returns: A `GroceryFieldStyle` with the specified alignment and keyboard settings.
    static func groceryFieldStyle(alignment: TextAlignment = .center, keyboardType: UIKeyboardType = .alphabet) -> GroceryFieldStyle {
        return .init(alignment: alignment, keyboardType: keyboardType)
    }
}
