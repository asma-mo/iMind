//
//  MainHeaderTitle.swift
//  challenge1
//
//  Created by Nouf on 03/10/2024.
//
import SwiftUI

struct MainHeaderTitle: View {
    var title: String
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                
                Path { path in
                    let width = geometry.size.width
                    let height = geometry.size.height
                    
                    path.move(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: width, y: 0))
                    path.addLine(to: CGPoint(x: width, y: height * 0.85))
                    path.addQuadCurve(to: CGPoint(x: 0, y: height * 0.85),
                                      control: CGPoint(x: width / 2, y: height))
                    path.closeSubpath()
                }
                .fill(Color("Main_Purple"))
                
                // Flame image
                Image("flame")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .padding(.top, 92)
                    .padding(.trailing, 16)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                VStack {
                    HStack {
                        
                        Spacer()
                        
                        Text(title)
                            .foregroundColor(Color("off_White"))
                            .font(.system(size: 36, weight: .bold))
                            .padding(.trailing, 30)
                        
                        Spacer()
                    }
                    .padding(.top, 110)
                }
            }
        }
        .frame(height: 250)
        .edgesIgnoringSafeArea(.top)
        Spacer()
    }
}


#Preview {
    MainHeaderTitle(title: "test")
}
