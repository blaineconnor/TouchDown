//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Fatih Emre on 30.12.2024.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTY
    
    let player: Player
    
    // MARK: - BODY
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW
#Preview {
    FeaturedItemView(player: players[0])
}
