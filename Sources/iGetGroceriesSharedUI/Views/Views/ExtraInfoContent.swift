//
//  ExtraInfoContent.swift
//  
//
//  Created by Nikolai Nobadi on 8/28/24.
//

import SwiftUI

struct ExtraInfoContent: View {
    let text: String
    
    private var shouldAutoSize: Bool { text.count > 40 }
    private var heightNumber: CGFloat { getHeightPercent(90) }
    
    var body: some View {
        Text(text)
            .withFont(.body, autoSizeLineLimit: shouldAutoSize ? 1 : nil)
            .frame(maxWidth: .infinity, minHeight: heightNumber * 0.06, alignment: .leading)
            .contentShape(Rectangle())
    }
}
