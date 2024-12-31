//
//  Shop.swift
//  TouchDown
//
//  Created by Fatih Emre on 31.12.2024.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
