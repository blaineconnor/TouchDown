//
//  NavigationBarDetialView.swift
//  TouchDown
//
//  Created by Fatih Emre on 31.12.2024.
//

import SwiftUI

struct NavigationBarDetialView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }//: HSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    NavigationBarDetialView()
}
