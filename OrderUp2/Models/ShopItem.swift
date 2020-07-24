//
//  ShopItem.swift
//  ShoppingCart
//
//  Created by Jody Abney on 7/18/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import Foundation

struct ShopItem: Identifiable, Equatable {
    var price: Double
    var id: Int
    var name: String
    var imageName: String
    var categoryID: Int
}


extension ShopItem {
    
    static func all() -> [ShopItem] {
        return [
            ShopItem(price: 9.99, id: 1, name: "Turkey", imageName: "turkey", categoryID: 1),
            ShopItem(price: 1.99, id: 2, name: "Hot Drink", imageName: "takeaway_hot_drink", categoryID: 2),
            ShopItem(price: 0.99, id: 3, name: "Asparagus", imageName: "asparagus", categoryID: 4),
            ShopItem(price: 0.49, id: 4, name: "Beetroot", imageName: "beetroot", categoryID: 4),
            ShopItem(price: 0.49, id: 5, name: "Boletus Mushroom", imageName: "boletus_mushroom", categoryID: 4),
            ShopItem(price: 0.99, id: 6, name: "Cherry Donut", imageName: "cherry_donut", categoryID: 3),
            ShopItem(price: 0.25, id: 7, name: "Chili Pepper", imageName: "chili_pepper", categoryID: 4),
            ShopItem(price: 3.99, id: 8, name: "Chinese Noodle", imageName: "chinese_noodle", categoryID: 10),
            ShopItem(price: 1.49, id: 9, name: "Chips", imageName: "chips", categoryID: 5),
            ShopItem(price: 1.49, id: 10, name: "Fries", imageName: "fries", categoryID: 5),
            ShopItem(price: 4.99, id: 11, name: "Ham", imageName: "gammon", categoryID: 1),
            ShopItem(price: 9.99, id: 12, name: "Italian Pizza", imageName: "italian_pizza", categoryID: 6),
            ShopItem(price: 3.49, id: 13, name: "Lemon Cake", imageName: "lemon_cake", categoryID: 3),
            ShopItem(price: 0.49, id: 14, name: "Pears", imageName: "pears", categoryID: 7),
            ShopItem(price: 17.99, id: 15, name: "Salmon", imageName: "salmon", categoryID: 8),
            ShopItem(price: 5.99, id: 16, name: "Sandwich with Fried Egg", imageName: "sandwich_with_fried_egg", categoryID: 9),
            ShopItem(price: 9.99, id: 17, name: "Street Food", imageName: "street_food", categoryID: 11),
            ShopItem(price: 0.99, id: 18, name: "Sweet Carrots", imageName: "sweet_carrot", categoryID: 4),
            ShopItem(price: 1.99, id: 19, name: "Tomato and Garlic", imageName: "tomato_and_garlic", categoryID: 4)
            ].sorted(by: { (lhsShopItem, rhsShopItem) -> Bool in
                return lhsShopItem.name < rhsShopItem.name
        })
    }
}
