//
//  ContentView.swift
//  HAXOR News
//
//  Created by Anastasios Rigatos on 5/12/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url:post.url)){
                    HStack(alignment: .center, spacing: 10) {
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text(String(post.points))
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            Text(post.title)
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading) // Ensure equal alignment
                        }
                        .frame(width: 200, alignment: .leading) // Fixed width ensures consistency
                        
                        Spacer() // Push the button to the right

                             // Capsule shape
                        
                    }
                    .padding(.vertical, 1)
                }
                
            }
            .navigationBarTitle("HACKER NEWS")
        }.onAppear {
            networkManager.fetchData()
      }
    }
  }


#Preview {
    ContentView()
}
