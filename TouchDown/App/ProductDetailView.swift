//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Fatih Emre on 31.12.2024.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    @State private var animateTopViews: Bool = false
    @State private var animateBottomViews: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .offset(y: animateTopViews ? 0 : -200)
                .animation(.easeOut(duration: 0.5), value: animateTopViews)
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
                .offset(y: animateTopViews ? 0 : -200)
                .animation(.easeOut(duration: 0.5), value: animateTopViews)
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
                .offset(y: animateTopViews ? 0 : -200)
                .animation(.easeOut(duration: 0.5), value: animateTopViews)
            
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                // RATING + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) //: SCROLL
                
                // QUANTITY + FAVORITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                // ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }) //: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            .offset(y: animateBottomViews ? 0 : 200)
            .animation(.easeOut(duration: 0.5), value: animateBottomViews)
        }) //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
        .onAppear {
            animateTopViews = true
            animateBottomViews = true
        }
    }
        
}

// MARK: - PREVIEW
#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
