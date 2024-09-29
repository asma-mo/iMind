import SwiftUI

struct CurvedBackgroundView: View {
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
                .fill(Color(red: 125/255, green: 130/255, blue: 163/255))
                
                Image("flame")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .padding(.top, 92)
                    .padding(.trailing, 16)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .frame(height: 250)
        .edgesIgnoringSafeArea(.top)
    }
}
