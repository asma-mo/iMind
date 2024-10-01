//
//  SocialIsolationView.swift
//  challenge1
//
//  Created by Nouf on 30/09/2024.
//

import SwiftUI

struct SocialIsolationView: View {
    
    var body: some View {
        TamplateView(title: "") {
            // Here write your program!! :)
            let purple = Color(red: 109/255, green:119/255, blue: 157/255 )
            let beige = Color(red:242/255, green:241/255, blue:239/255)
           
            VStack{
                Text("Social Isolation").foregroundColor(Color(red:242/255, green:241/255, blue:239/255))
                    .font(.system(size: 36, weight: .bold))
                    .padding(.trailing, 30).padding(.top, 38)
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
                            
                            Text(getCurrentDateString()).fontWeight(.semibold).font(.largeTitle).foregroundColor(beige)
                            
                            Image("flame")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                               
                                
                            
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
