//
//  DetailView.swift
//  HAXOR News
//
//  Created by Anastasios Rigatos on 6/12/2024.
//

import SwiftUI
import WebKit
struct DetailView: View {
    
    //Parameters
    let url : String?
    
    var body: some View {
        WebView(url: url)
    }
}




#Preview {
    DetailView(url: "www.google.com")
}
