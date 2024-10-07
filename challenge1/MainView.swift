import SwiftUI

struct MainView: View {

    @Binding var isShowingSplash: Bool
    
    var body: some View {
        NavigationView {
        MainTamplateView(title: "Choose"){

                ZStack{
                    
                    VStack{
                        ZStack{
                            
                            Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(Color("Main_Purple")).cornerRadius(30)
                            
                            //Text("Social Isolation").fontWeight(.semibold).font(.largeTitle).foregroundColor(Color("off_White"))
                            NavigationLink(destination: SocialIsolationView()) {
                                Text("Social Isolation")
                                    .font(.system(size: 34, weight: .semibold, design: .rounded))
                                    .foregroundColor(Color("off_White"))
                            }
                            
                            
                            
                            
                        }
                        .padding(.top, 90)
                        ZStack{
                            
                            Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(Color("Main_Purple")).cornerRadius(30)
                            
                            NavigationLink(destination: ProcrastinationView()) {
                                Text("Procrastnation").font(.system(size: 34, weight: .semibold, design: .rounded)).foregroundColor(Color("off_White"))
                            }

                            
                        }
                        
                        
                        
                        
                    }
                    .padding()
                    
                    
                    if isShowingSplash {
                        SplashView(isActive: $isShowingSplash)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)

    }
      
}

