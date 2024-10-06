import SwiftUI

struct MainView: View {
<<<<<<< HEAD
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

=======

    
    var body: some View {
        MainTamplateView(title: "Choose"){
            
            // Here write your program!! :)
          
            VStack{
                ZStack{
                    
                    Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(Color("Main_Purple")).cornerRadius(30)
                    
//Text("Social Isolation").fontWeight(.semibold).font(.largeTitle).foregroundColor(Color("off_White"))
                    Text("Social Isolation").fontWeight(.semibold).font(.largeTitle).foregroundColor(Color("off_White"))
                    
                }
                .padding(.top, 90)
                ZStack{
                    
                    Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(Color("Main_Purple")).cornerRadius(30)
                    
                    Text("Procrastnation").fontWeight(.semibold).font(.largeTitle).foregroundColor(Color("off_White"))
                    
                }
                
                
                
                
            }
            .padding()
            
        }

            
            
            
   
    }
            
      
}


#Preview {
    MainView()
}
>>>>>>> asma
