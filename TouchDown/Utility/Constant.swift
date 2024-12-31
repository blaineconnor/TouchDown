//
//  Constant.swift
//  TouchDown
//
//  Created by Fatih Emre on 30.12.2024.
//

import SwiftUI

// Data

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")

// Color

let colorBackground: Color = Color("Color")
let colorGray: Color = Color(.systemGray4)
// Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

// API

// Image

// Font

// String

// Misc