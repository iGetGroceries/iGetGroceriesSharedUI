//
//  CheckmarkImage.swift
//
//
//  Created by Nikolai Nobadi on 7/21/24.
//

import SwiftUI

public struct CheckmarkImage: View {
    public init() { }
    
    public var body: some View {
        Image(systemName: "checkmark.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 25, height: 25)
            .foregroundColor(.darkGreen)
            .padding()
    }
}
