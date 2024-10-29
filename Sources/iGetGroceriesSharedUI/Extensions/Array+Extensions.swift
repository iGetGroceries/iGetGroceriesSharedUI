//
//  Array+Extensions.swift
//
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import NnSwiftUIKit

public extension Array where Element: Identifiable {
    mutating func toggleItem(_ item: Element) {
        nnToggleItem(item)
    }
    
    mutating func addOrUpdate(_ item: Element) {
        nnAddOrUpdate(item)
    }
}
