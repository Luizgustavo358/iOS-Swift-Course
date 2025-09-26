//
//  ContentView.swift
//  HackerNews
//
//  Created by Luiz Gustavo Bragança dos Santos on 23/09/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        
                        Divider()
                        
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("HACKER NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

