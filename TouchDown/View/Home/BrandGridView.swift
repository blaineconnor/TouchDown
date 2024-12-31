//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Fatih Emre on 31.12.2024.
//

import SwiftUI
// MARK: - PROPERTY

// MARK: - BODY

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: { ForEach(brands) { brand in
                BrandItemView(brand: brand)
            }})//: GRID
            .frame(height: 200)
            .padding(15)
        }) //: SCROLL
    }
}

// MARK: - PREVIEW

#Preview {
    BrandGridView()
}
