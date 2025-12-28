//
//  Category.swift
//  Todoey
//
//  Created by Luiz Gustavo Bragança dos Santos on 26/10/25.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
}
