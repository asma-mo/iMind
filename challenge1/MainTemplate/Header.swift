import SwiftUI

struct HeaderView: View {
    var title: String 
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // Action for back button
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .bold))
                        .padding(.leading, 16)
                }
                
                Spacer()
                
                Text(title) // Use the title parameter
                    .foregroundColor(.white)
                    .font(.system(size: 36, weight: .bold))
                    .padding(.trailing, 30)
                
                Spacer()
            }
            .padding(.top, 50)
        }
    }
}
