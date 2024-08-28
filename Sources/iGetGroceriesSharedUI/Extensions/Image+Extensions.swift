//
//  Image+Extensions.swift
//  
//
//  Created by Nikolai Nobadi on 8/28/24.
//

import SwiftUI

public extension Image {
    static var fishRun: Image { return makeMascotImage(.fishRun) }
    static var openFridge: Image { return makeMascotImage(.openFridge) }
    static var moveFridge: Image { return makeMascotImage(.moveFridge) }
}

extension Image {
    static func makeMascotImage(_ mascot: MascotImage) -> Image {
        return Image(mascot.rawValue, bundle: .module, label: Text(mascot.accessibilityLabel))
    }
    
    static func makeUpdateRequiredImage() -> Image {
        return Image("updateRequired", bundle: .module)
    }
}


// MARK: - Dependencies
enum MascotImage: String {
    case openFridge, moveFridge, fishRun
    
    var accessibilityLabel: String {
        switch self {
        case .openFridge:
            return "An illustrated figure opening a refrigerator."
        case .moveFridge:
            return "An illiustrated figure moving a refirgerator."
        case .fishRun:
            return "An illustrated figure running away with a fish."
        }
    }
}
