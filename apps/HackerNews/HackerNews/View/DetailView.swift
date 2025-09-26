//
//  DetailView.swift
//  HackerNews
//
//  Created by Luiz Gustavo Bragança dos Santos on 25/09/25.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(url: URL(string: url ?? "https://www.google.com")!)
            .navigationTitle("HACKER NEWS")
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
