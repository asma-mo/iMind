//
//  Untitled.swift
//  challenge1
//
//  Created by Rimas Alshahrani on 27/03/1446 AH.
//


import SwiftUI

struct RimasView: View { //struct FileName: View
    var body: some View {
        ZStack {
            // Use the reusable Off-white background
            BackgroundView()

            VStack(spacing: 30) {
                // Use CurvedBackgroundView from mainTemplate
                CurvedBackgroundView()
                
                Spacer()
            }
            
            VStack {
                // Pass the title "Streak" to HeaderView
                HeaderView(title: "prctices")
                
                Spacer()
            }
        }
    }
}

struct TRimasView_Previews: PreviewProvider { //struct FileName_Previews: PreviewProvider {
    static var previews: some View {
        
    RimasView() //FileName)
    }
}
