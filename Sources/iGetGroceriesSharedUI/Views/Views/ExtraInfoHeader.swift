//
//  ExtraInfoHeader.swift
//  
//
//  Created by Nikolai Nobadi on 8/28/24.
//

import SwiftUI

public struct ExtraInfoHeader: View {
    let title: String
    
    public init(_ title: String) {
        self.title = title
    }
    
    public var body: some View {
        Text(title)
            .withFont(.caption, textColor: .white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 2, leading: getWidthPercent(2), bottom: 2, trailing: 0))
    }
}
