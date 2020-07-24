//
//  CategoryItem.swift
//  OrderUp
//
//  Created by Jody Abney on 7/19/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import Foundation

struct CategoryItem: Identifiable, Equatable {
    var id: Int
    var name: String
    var imageName: String
}

extension CategoryItem {
    
    static func all() -> [CategoryItem] {
        return [
            CategoryItem(id: 0, name: "All", imageName: ""),
            CategoryItem(id: 1, name: "Meat", imageName: "gammon"),
            CategoryItem(id: 2, name: "Drinks", imageName: "takeaway_hot_drink"),
            CategoryItem(id: 3, name: "Desserts", imageName: "lemon_cake"),
            CategoryItem(id: 4, name: "Vegatables", imageName: "beetroot"),
            CategoryItem(id: 5, name: "Sides", imageName: "fries"),
            CategoryItem(id: 6, name: "Pizza", imageName: "italian_pizza"),
            CategoryItem(id: 7, name: "Fruits", imageName: "pears"),
            CategoryItem(id: 8, name: "Fish", imageName: "salmon"),
            CategoryItem(id: 9, name: "Sandwiches", imageName: "sandwich_with_fried_egg"),
            CategoryItem(id: 10, name: "Pasta", imageName: "chinese_noodle"),
            CategoryItem(id: 11, name: "Other", imageName: "street_food")
            ].sorted(by: { (lhsCatItem, rhsCatItem) -> Bool in
                return lhsCatItem.name < rhsCatItem.name
            })
    }
}
