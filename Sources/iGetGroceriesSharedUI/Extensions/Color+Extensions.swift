//
//  File.swift
//  
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import SwiftUI

public extension Color {
    static var darkGreen: Color { 
        return Color("darkGreen", bundle: .module)
    }
    
    static var lightGreen: Color {
        return Color("lightGreen", bundle: .module)
    }
    
    static var secondaryBackground: Color {
        return Color(uiColor: .secondarySystemBackground)
    }
}
