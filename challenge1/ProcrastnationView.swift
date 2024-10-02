//
//  Procrasination.swift
//  challenge1
//
//  Created by Nouf on 02/10/2024.
//

import SwiftUI





struct ProcrastnationView: View {
    @State var didTapButton : Bool = false
    
    
    var body: some View {
        
       
        TamplateView(title: "") {
            // Here write your program!! :)
            let purple = Color(red: 109/255, green:119/255, blue: 157/255 )
            let beige = Color(red:242/255, green:241/255, blue:239/255)
           
                  VStack{
                Text("Procrastnation").foregroundColor(Color(red:242/255, green:241/255, blue:239/255))
                    .font(.system(size: 36, weight: .bold))
                   .padding(.trailing, 30)
                   .padding(.top, 39)
                Spacer()
                
                VStack{
                    Spacer()
                    
                    ZStack{
                        
                        Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(purple).cornerRadius(30)
                        
                        Text("Practice").fontWeight(.semibold).font(.largeTitle).foregroundColor(beige)
                        
                    }
                    Spacer().frame(height: 20)
                 
                    ZStack{
                        
                        Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(purple).cornerRadius(30)
                        
                        Text("Past Experinces").fontWeight(.semibold).font(.largeTitle).foregroundColor(beige)
                        
                    }
                    Spacer().frame(height:120)
                    ZStack{
                        
                        Rectangle().frame(width: 300, height: 100).aspectRatio(contentMode: .fit).foregroundColor(purple).cornerRadius(30)
                        
                        HStack{
                            
                            Text(getCurrentDateString()).fontWeight(.semibold).font(.system(size: 33)).foregroundColor(beige)
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
    ProcrastnationView()
}
