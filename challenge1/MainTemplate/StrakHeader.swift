import SwiftUI

struct StrakHeader: View {
    @State private var isStreakViewActive = false
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
                

                
                VStack {
                    HStack {
                        
                        Spacer()
                        
                        Text(title)
                            .foregroundColor(Color("off_White"))
                            .font(.system(size: 36, weight: .bold, design: .rounded))
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
    StrakHeader(title: "test")
}
