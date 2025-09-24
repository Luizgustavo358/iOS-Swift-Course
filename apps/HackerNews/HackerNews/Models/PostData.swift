//
//  PostData.swift
//  HackerNews
//
//  Created by Luiz Gustavo Bragança dos Santos on 23/09/25.
//

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
