import SwiftUI

struct MainTamplateView<Content: View>: View {
    var title: String
    @ViewBuilder var content: Content
    
    var body: some View {
        ZStack {
            // Use the reusable Off-white background
            BackgroundView()

            VStack{
                MainHeaderTitle(title: title)
                Spacer()
            }
            
            content
        }
    }
}

