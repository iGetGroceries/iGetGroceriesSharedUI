//
//  GenericInfoView.swift
//
//
//  Created by Nikolai Nobadi on 8/28/24.
//

import SwiftUI

public struct GenericInfoView<Header: View, Info: View>: View {
    let header: Header
    let info: Info
    
    public init(@ViewBuilder header: () -> Header, @ViewBuilder info: () -> Info) {
        self.header = header()
        self.info = info()
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            header
                .frame(maxWidth: .infinity)
                .background(Color.darkGreen)
            Divider().background(.primary)
            info
                .frame(maxWidth: .infinity)
                .background(Color.secondaryBackground)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
