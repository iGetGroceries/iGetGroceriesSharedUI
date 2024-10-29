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
    static func groceryFieldStyle(alignment: TextAlignment = .center, keyboardType: UIKeyboardType = .alphabet) -> GroceryFieldStyle {
        return .init(alignment: alignment, keyboardType: keyboardType)
    }
}
