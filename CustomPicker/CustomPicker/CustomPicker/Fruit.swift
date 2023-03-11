//
//  Fruit.swift
//  CustomPicker
//
//  Created by 우주형 on 2023/03/11.
//

import Foundation

struct Fruit: Identifiable {
    let id = UUID().uuidString
    let title: String
}

extension Fruit {
    static let list: [Fruit] = [
        Fruit(title: "Apple"),
        Fruit(title: "Orange"),
        Fruit(title: "Grape"),
        Fruit(title: "Mango"),
        Fruit(title: "Lemon"),
        Fruit(title: "Peach"),
        Fruit(title: "Banana"),
        Fruit(title: "Coconut"),
        Fruit(title: "Cherry"),
        Fruit(title: "Pear"),
        Fruit(title: "Plum"),
    ]
    
}
