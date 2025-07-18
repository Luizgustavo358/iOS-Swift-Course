//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Luiz Gustavo Bragança dos Santos on 09/07/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
