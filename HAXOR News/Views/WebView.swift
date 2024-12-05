//
//  WebView.swift
//  HAXOR News
//
//  Created by Anastasios Rigatos on 6/12/2024.
//

import SwiftUI
import Foundation
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: url!)!))
    }
    
    var url : String?
}

#Preview {
    WebView()
}
