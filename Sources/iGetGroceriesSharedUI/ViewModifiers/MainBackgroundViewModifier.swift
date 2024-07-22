//
//  MainBackgroundViewModifier.swift
//
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import SwiftUI

struct MainBackgroundViewModifier: ViewModifier {
    let alignment: Alignment
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: alignment)
            .background(Color.lightGreen)
    }
}

public extension View {
    func mainBackground(alignment: Alignment = .top) -> some View {
        modifier(MainBackgroundViewModifier(alignment: alignment))
    }
}
