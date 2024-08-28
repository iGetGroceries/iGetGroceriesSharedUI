//
//  ExtraInfoHeader.swift
//  
//
//  Created by Nikolai Nobadi on 8/28/24.
//

import SwiftUI

struct ExtraInfoHeader: View {
    let title: String
    
    var body: some View {
        Text(title)
            .withFont(.caption, textColor: .white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 2, leading: getWidthPercent(2), bottom: 2, trailing: 0))
    }
}
