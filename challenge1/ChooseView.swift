import SwiftUI

struct ChooseView: View {
    
    var body: some View {
        TamplateView(title: "Choose") {
            // Here write your program!! :)
            let purple = Color(red: 109/255, green:119/255, blue: 157/255 )
            let beige = Color(red:242/255, green:241/255, blue:239/255)
            VStack{
                ZStack{
                    
                    Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(purple).cornerRadius(30)
                    
                    Text("Social Isolation").fontWeight(.semibold).font(.largeTitle).foregroundColor(beige)
                    
                }
                .padding(.top, 90)
                ZStack{
            
                    Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(purple).cornerRadius(30)
                    
                    Text("Procrastnation").fontWeight(.semibold).font(.largeTitle).foregroundColor(beige)
                    
                }
            }
            .padding()
            
            }
        }
    }


#Preview {
  ChooseView()
}
