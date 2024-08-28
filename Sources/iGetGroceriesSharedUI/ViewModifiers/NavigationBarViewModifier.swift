//
//  NavigationBarViewModifier.swift
//
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import SwiftUI

struct NavigationBarViewModifier: ViewModifier {
    init(tint: Color, backgroundColor: Color) {
        #if canImport(UIKit)
        let coloredAppearance = UINavigationBarAppearance()

        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = .init(backgroundColor)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor(tint)]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(tint)]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .init(tint)
        #endif
    }
    
    func body(content: Content) -> some View {
        content
    }
}

public extension View {
    func applyNavigationBarStyle(tint: Color = .white, backgroundColor: Color = .darkGreen) -> some View {
        self.modifier(NavigationBarViewModifier(tint: tint, backgroundColor: backgroundColor))
    }
}

