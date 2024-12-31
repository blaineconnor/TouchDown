//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Fatih Emre on 31.12.2024.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(0)
            }//: ZSTACK
            .background(Color(red: product.red, green:product.green, blue: product.blue))
            .cornerRadius(12)
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)

            //PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })//: VSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    ProductItemView(product: products[0])
}
