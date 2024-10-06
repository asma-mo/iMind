//
//  SocialIsolationView.swift
//  challenge1
//
//  Created by Nouf on 30/09/2024.
//

import SwiftUI





struct SocialIsolationView: View {
    @State var didTapButton : Bool = false
    
    
    var body: some View {
        
       
        TamplateView(title: "") {
            // Here write your program!! :)
          
           
                  VStack{
                Text("Social Isolation").foregroundColor(Color("off_White"))
                    .font(.system(size: 36, weight: .bold))
                    .padding(.trailing, 30)
                   .padding(.top, 38)
                Spacer()
                
                VStack{
                    Spacer()
                    
                    ZStack{
                        
                        Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(Color("Main_Purple")).cornerRadius(30)
                        
                        Text("Practice").fontWeight(.semibold).font(.largeTitle).foregroundColor(Color("off_White"))
                        
                    }
                    Spacer().frame(height: 20)
                 
                    ZStack{
                        
                        Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(Color("Main_Purple")).cornerRadius(30)
                        
                        Text("Past Experinces").fontWeight(.semibold).font(.largeTitle).foregroundColor(Color("off_White"))
                        
                    }
                    Spacer().frame(height:120)
                    ZStack{
                        
                        Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(Color("Main_Purple")).cornerRadius(30)
                        
                        HStack{
                            
                            Text(getCurrentDateString()).fontWeight(.semibold).font(.system(size: 33)).foregroundColor(Color("off_White"))
                                .padding(.leading, 15)
                            
                            
                            Button(action: {
                                didTapButton.toggle()
                            }) {
                                ZStack{
                                    if didTapButton{
                                        GifReaderView(gifName: "flame2_animation")
                                            .frame(width: 109, height: 85)//.padding(.trailing, 5)
                                            
                                          //  .padding(.top, 20)
                                          
                                    
                                        
                                    }
                                    else{
                                        Image("flame_empty")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 40, height: 40)
                                            .frame(width: 109, height: 40)//.padding(.trailing, 5)
                                          //  .padding(.top, 20)
                                    }
                                }
                                
                                
                            }
                           
                        }
                        
                    }
                    
                    
                   
                    
                }
                .padding()
            }
        }
        }
    func getCurrentDateString() -> String {
            let formatter = DateFormatter()
        formatter.dateStyle = .short
            return formatter.string(from: Date())
        }
    }


#Preview {
  SocialIsolationView()
}
