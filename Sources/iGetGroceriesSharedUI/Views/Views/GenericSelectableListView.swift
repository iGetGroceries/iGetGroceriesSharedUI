//
//  GenericSelectableListView.swift
//
//
//  Created by Nikolai Nobadi on 9/18/24.
//

import SwiftUI

public struct GenericSelectableListView<Item: Selectable>: View {
    let allItems: [Item]
    let selectedItems: [Item]
    let toggleItem: (Item) -> Void
    
    public init(allItems: [Item], selectedItems: [Item], toggleItem: @escaping (Item) -> Void) {
        self.allItems = allItems
        self.selectedItems = selectedItems
        self.toggleItem = toggleItem
    }
    
    public var body: some View {
        List(allItems) { item in
            SelectableRow(name: item.name, isSelected: selectedItems.contains(where: { $0.id == item.id }))
                .tappable {
                    toggleItem(item)
                }
        }
        .scrollContentBackground(.hidden)
    }
}


// MARK: - Row
fileprivate struct SelectableRow: View {
    let name: String
    let isSelected: Bool
    
    var body: some View {
        HStack {
            Text(name)
                .withFont(.body)
            Spacer()
            CheckmarkImage()
                .onlyShow(when: isSelected)
        }
    }
}

public protocol Selectable: Identifiable where ID == String {
    var name: String { get }
}
