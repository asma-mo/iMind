import SwiftUI

struct MainView: View {
    @State private var isShowingSplash = true
    
    var body: some View {
        ZStack {
            TamplateView(title: "Example") {
                
                Text("Hello, World!")
            }
            
            if isShowingSplash {
                SplashView(isActive: $isShowingSplash)
            }
        }
    }
}

#Preview {
    MainView()
}

