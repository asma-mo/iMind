import SwiftUI

struct TamplateView: View { //struct FileName: View
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
                // Pass the title "Streak" to HeaderView
                HeaderView(title: "prctices")
                
                Spacer()
            }
        }
    }
}

struct TamplateView_Previews: PreviewProvider { //struct FileName_Previews: PreviewProvider {
    static var previews: some View {
        TamplateView() //FileName)
    }
}

