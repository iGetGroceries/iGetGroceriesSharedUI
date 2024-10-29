//
//  NavigationBarViewModifier.swift
//
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import SwiftUI

struct NavigationBarViewModifier: ViewModifier {
    init(tint: Color, backgroundColor: Color) {
        let coloredAppearance = UINavigationBarAppearance()

        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = .init(backgroundColor)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor(tint)]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(tint)]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .init(tint)
    }
    
    func body(content: Content) -> some View {
        content
    }
}

public extension View {
    /// Applies a custom navigation bar style with specified tint and background colors.
    /// - Parameters:
    ///   - tint: The color applied to navigation bar items. Default is `.white`.
    ///   - backgroundColor: The background color for the navigation bar. Default is `.darkGreen`.
    /// - Returns: A view with customized navigation bar style.
    func applyNavigationBarStyle(tint: Color = .white, backgroundColor: Color = .darkGreen) -> some View {
        self.modifier(NavigationBarViewModifier(tint: tint, backgroundColor: backgroundColor))
    }
}
