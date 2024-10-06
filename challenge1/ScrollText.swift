import SwiftUI

struct ScrollText: View {
    var body: some View {
       
            ZStack {
           
                BackgroundView()
                
                ZStack() {
                   
                   
                    ScrollView() {
                        VStack(spacing: 20) {
                            ForEach(0..<7) { _ in
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                    .padding(.horizontal)
                            }
                        }
                        .padding(.top, 200)
                    }
                    VStack{
                        HeaderTitle(title: "title")
                          

                        Spacer()
                    }
                    
                }
                

            
        }
        
    }
}

#Preview {
    ScrollText()
}
