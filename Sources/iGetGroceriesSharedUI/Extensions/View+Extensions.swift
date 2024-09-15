//
//  View+Extensions.swift
//
//
//  Created by Nikolai Nobadi on 9/15/24.
//

import SwiftUI

public extension View {
    func setSegmentedPickerAppearance(withCustomFont: Bool = true) {
        UISegmentedControl.appearance()
            .selectedSegmentTintColor = UIColor(Color.darkGreen)
        
        UISegmentedControl.appearance()
            .backgroundColor = .secondarySystemBackground
        
        UISegmentedControl.appearance().setTitleTextAttributes(
            [.font: UIFont(name: .boldFont, size: 20)!, .foregroundColor: UIColor.white], for: .selected
        )
        
        UISegmentedControl.appearance().setTitleTextAttributes(
            [.font: UIFont(name: .boldFont, size: 15)!, .foregroundColor: UIColor.black], for: .normal
        )
    }
}
