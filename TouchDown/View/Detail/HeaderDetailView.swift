//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Fatih Emre on 31.12.2024.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }) //: VSTACK
        .foregroundColor(.white)
    }
}

// MARK: - PREVIEW
#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
}
