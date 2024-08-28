//
//  PurchasedStrikethroughViewModifier.swift
//  
//
//  Created by Nikolai Nobadi on 8/28/24.
//

import SwiftUI

struct PurchasedStrikethroughViewModifier: ViewModifier {
    let isActive: Bool
    
    func body(content: Content) -> some View {
        content
            .overlay {
                Color.red
                    .frame(height: 2)
                    .onlyShow(when: isActive)
            }
    }
}

public extension View {
    func purchasedStrikethrough(isActive: Bool) -> some View {
        modifier(PurchasedStrikethroughViewModifier(isActive: isActive))
    }
}
