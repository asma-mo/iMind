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
                        .foregroundColor(Color(red:242/255, green:241/255, blue:239/255))
                        .font(.system(size: 24, weight: .bold))
                        .padding(.leading, 16)
                }
                
                Spacer()
                
                Text(title) // Use the title parameter
                    .foregroundColor(Color(red:242/255, green:241/255, blue:239/255))
                    .font(.system(size: 36, weight: .bold))
                    .padding(.trailing, 30)
                
                Spacer()
            }
            .padding(.top, 50)
        }
    }
}
