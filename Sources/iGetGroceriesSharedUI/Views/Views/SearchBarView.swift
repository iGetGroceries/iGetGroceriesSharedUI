//
//  SearchBarView.swift
//
//
//  Created by Nikolai Nobadi on 8/27/24.
//

import SwiftUI

public struct SearchBarView: View {
    @Binding var searchText: String
    @FocusState var isSearching: Bool
    
    let prompt: String
    
    private func clearSearch() {
        searchText = ""
    }
    
    public init(_ prompt: String, searchText: Binding<String>, isSearching: FocusState<Bool>) {
        self.prompt = prompt
        self._searchText = searchText
        self._isSearching = isSearching
    }
    
    public var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(isSearching ? .darkGreen : .primary)
            TextField(prompt, text: $searchText)
                .tint(.darkGreen)
                .submitLabel(.done)
                .focused($isSearching)
                .keyboardType(.alphabet)
                .autocorrectionDisabled(true)
                .textInputAutocapitalization(.never)
                .overlay(alignment: .trailing) {
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .opacity(searchText.isEmpty ? 0 : 1)
                        .onTapGesture {
                            clearSearch()
                        }
                }
        }
        .padding(4)
        .withRoundedShadowBorder(backgroundColor: .secondaryBackground)
        .onDisappear {
            clearSearch()
        }
    }
}
