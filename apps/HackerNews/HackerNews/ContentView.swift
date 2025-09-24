//
//  ContentView.swift
//  HackerNews
//
//  Created by Luiz Gustavo Bragança dos Santos on 23/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(posts) { post in
                HStack {
                    Text(post.id)
                    Text(post.title)
                }
                
            }
            .navigationTitle("HACKER NEWS")
        }
    }
}

#Preview {
    ContentView()
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjour"),
    Post(id: "3", title: "Hola"),
    Post(id: "4", title: "Olá"),
    Post(id: "5", title: "Konnichiwa"),
]
