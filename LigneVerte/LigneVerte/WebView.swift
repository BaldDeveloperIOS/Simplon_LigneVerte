//
//  Webview.swift
//  LigneVerte
//
//  Created by MacBookGP on 28/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct Webvideo: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        let request = URLRequest(url: url)
        let wKWebvideo = WKWebView()
        wKWebvideo.load(request)
        
        return wKWebvideo
    }
    
    
    var url: String
 
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Webvideo>) {
        
    }
}
