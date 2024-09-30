//
//  ExampleTamplate.swift
//  challenge1
//
//  Created by Asma on 30/09/2024.
//

import SwiftUI

struct TamplateView<Content: View>: View {
    var title: String
    @ViewBuilder var content: Content
    
    var body: some View {
        ZStack {
            // Use the reusable Off-white background
            BackgroundView()

            VStack(spacing: 0) {
                // Use CurvedBackgroundView from mainTemplate
                CurvedBackgroundView()
                
                Spacer()
            }
            
            VStack {
                // Pass the dynamic title to HeaderView
                HeaderView(title: title)
                
                Spacer()
            }
            
            content
        }
    }
}

