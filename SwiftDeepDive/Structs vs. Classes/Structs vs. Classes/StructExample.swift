//
//  StructExample.swift
//  Structs vs. Classes
//
//  Created by Luiz Gustavo Bragança dos Santos on 02/01/26.
//

import Foundation

struct StructHero {
    var name: String
    var universe: String
    
    mutating func reverseName() {
        self.name = String(self.name.reversed())
    }
}
