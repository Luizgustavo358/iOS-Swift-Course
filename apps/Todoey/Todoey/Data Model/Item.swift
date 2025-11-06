//
//  Item.swift
//  Todoey
//
//  Created by Luiz Gustavo Bragança dos Santos on 26/10/25.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done:  Bool   = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
