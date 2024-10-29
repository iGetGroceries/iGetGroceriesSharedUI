//
//  View+Extensions.swift
//
//
//  Created by Nikolai Nobadi on 9/15/24.
//

import SwiftUI

public extension View {
    /// Sets the appearance of UISegmentedControl with an optional custom font.
    /// - Parameter withCustomFont: A Boolean determining if a custom font should be applied.
    func setSegmentedPickerAppearance(withCustomFont: Bool = true) {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.darkGreen)
        UISegmentedControl.appearance().backgroundColor = .secondarySystemBackground
        UISegmentedControl.appearance().setTitleTextAttributes(
            [.font: UIFont(name: .boldFont, size: 20)!, .foregroundColor: UIColor.white],
            for: .selected
        )
        UISegmentedControl.appearance().setTitleTextAttributes(
            [.font: UIFont(name: .boldFont, size: 15)!, .foregroundColor: UIColor.black],
            for: .normal
        )
    }
}
