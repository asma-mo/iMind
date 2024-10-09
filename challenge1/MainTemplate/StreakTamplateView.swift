//
//  StreakTamplateView.swift
//  challenge1
//
//  Created by Asma on 08/10/2024.
//

import SwiftUI

struct StreakTamplateView<Content: View>: View {
    var title: String
    
    
    @ViewBuilder var content: Content
    
    var body: some View {
        ZStack {
            // Use the reusable Off-white background
            BackgroundView()

            VStack {
                // Pass the dynamic title to HeaderView
                StrakHeader(title: title)
                
                Spacer()
            }
            
            content
        }
    }
}
