//
//  EmptyListViewModifier.swift
//
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import SwiftUI

struct EmptyListViewModifier: ViewModifier {
    let listEmpty: Bool
    let listType: EmptyListType
    
    func body(content: Content) -> some View {
        if listEmpty {
            VStack(spacing: 15) {
                Spacer()
                Image(systemName: "tray")
                    .font(.largeTitle)
                Text(listType.title)
                    .withFont(.headline)
                Text(listType.message)
                    .multilineTextAlignment(.center)
                    .withFont(isDetail: true, autoSizeLineLimit: 1)
                
                Spacer()
            }
            .mainBackground()
        } else {
            content
        }
    }
}

public extension View {
    func withEmptyListView(listEmpty: Bool, listType: EmptyListType) -> some View {
        modifier(EmptyListViewModifier(listEmpty: listEmpty, listType: listType))
    }
}


// MARK: - Dependencies
public enum EmptyListType {
    public typealias NewGroceryName = String
    
    case markets
    case groceries(NewGroceryName)
    case recipes
    case steps
    case houses
}

extension EmptyListType {
    var title: String {
        switch self {
        case .markets:
            return "No Grocery Stores"
        case .groceries:
            return "No Groceries"
        case .recipes:
            return "No Recipes"
        case .steps:
            return "No recipe steps"
        case .houses:
            return "No Results"
        }
    }
    
    var message: String {
        switch self {
        case .markets:
            return "Add a new grocery store to begin reaping the benefits of iGetGroceries."
        case .groceries(let newGroceryName):
            if newGroceryName.isEmpty {
                return "Add a new grocery to begin reaping the benefits of iGetGroceries."
            }
            
            return "\(newGroceryName) isn't in any of your lists. Tap the plus button below to add it."
        case .recipes:
            return "No Recipes"
        case .steps:
            return "Tap on `Add New Step to start adding instructions for this recipe!"
        case .houses:
            return "Capitalization matters. If you continue having trouble finding the house, ask the house creator for the exact name."
        }
    }
}
