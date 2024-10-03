//
//  GifReaderView.swift
//  challenge1
//
//  Created by Nouf on 01/10/2024.
//

import SwiftUI
import WebKit

struct GifReaderView: UIViewRepresentable {
    let gifName : String
    func makeUIView(context: Context) -> some WKWebView {
        let webview = WKWebView()
        //get url and data
        if let url = Bundle.main.url(forResource: gifName, withExtension: "gif") , let data = try? Data(contentsOf: url)
        {
            //load data
            webview.load(data, mimeType: "image/gif", characterEncodingName:"UTF-8", baseURL: url.deletingLastPathComponent())
          
        webview.isOpaque = false
           webview.backgroundColor = UIColor.clear
            webview.scrollView.backgroundColor = UIColor.clear
            
        } else{
            print("Error: Unable to load the file")
        }
        
        
        return webview
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.reload()
    }
    
}



struct GifReaderView_Previews: PreviewProvider{
    static var previews: some View{
        GifReaderView(gifName: "flame_animation")
    }
}
