import SwiftUICore
struct RimasView: View {
    var body: some View {
        ZStack {
            // Use the reusable Off-white background
            BackgroundView()
            
            VStack(spacing: 0) {
                // Use CurvedBackgroundView from mainTemplate
                CurvedBackgroundView()
                
                // Left-aligned title "Description"
                Text("Description")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading) // Ensure left alignment
                
                // Left-aligned title "Steps"
                Text("Steps:")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading) // Ensure left alignment
                
                // Left-aligned steps
                VStack(alignment: .leading, spacing: 10) {
                    Text("1. Step one description")
                    Text("2. Step two description")
                    Text("3. Step three description")
                }
                .font(.body)
                Spacer()
                           }
                           .padding() // Optional padding for better layout
                           
                           VStack {
                               // Pass the title "Practices" to HeaderView
                               HeaderView(title: "Practices")
                               Spacer()
                           }
                       }
                   }
               }

               struct RimasView_Previews: PreviewProvider {
                   static var previews: some View {
                       RimasView()
                   }
               }
