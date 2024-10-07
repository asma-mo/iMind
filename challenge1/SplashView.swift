import SwiftUI

struct SplashView: View {
    @Binding var isActive: Bool
    @State private var size = 0.8
    @State private var opacity = 1
    
    var body: some View {
            VStack {
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                }
                .scaleEffect(size)
                .onAppear {
                    withAnimation(.easeIn(duration: 1)) {
                        self.size = 1.9
                        self.opacity = 1
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 254/255, green: 247/255, blue: 239/255))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation {
                        self.isActive = false
                    
                    
                }
            }
        }
    }
}

//#Preview {
//    MainView()
//}



//#Preview {
//  ExampleView()
//}
//
//
//import SwiftUI

//struct SplashView: View {
//    @Binding var isActive: Bool
//    @State private var opacity = 0
//    @State private var yOffset: CGFloat = 0
//    
//    var body: some View {
//        VStack {
//            Image("logo")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//        }
//        .offset(y: yOffset)
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color(red: 254/255, green: 247/255, blue: 239/255))
//        .onAppear {
//            withAnimation(.easeIn(duration: 0.2)) {
//                
//            }
//            
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
//                withAnimation(.easeOut(duration: 0.5)) {
//                    self.yOffset = -300
//                }
//            }
//            
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
//                withAnimation {
//                    self.isActive = false
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//  ExampleView()
//}
