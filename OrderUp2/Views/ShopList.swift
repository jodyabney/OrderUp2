//
//  ShopList.swift
//  ShoppingCart
//
//  Created by hax0r-MBP on 11/15/19.
//  Copyright © 2019 Devslopes. All rights reserved.
//

import SwiftUI

struct ShopList: View {
    var availableItems: [ShopItem]
    @State private var cartItems: Dictionary<Int, CartItem> = [:]
    var body: some View {
        NavigationView {
            List(availableItems) { item in
                ShopRow(inCart: self.inCart(shopItem: item), shopItem: item)
                    .onTapGesture {
                        self.toggleCartItem(shopItem: item)
                    }
            }
            .navigationBarTitle(Text("The Shop"))
            .navigationBarItems(trailing: Cart(cartItems: cartItems))
            
        }
    }
    
    private func inCart(shopItem: ShopItem) -> Bool {
        return cartItems[shopItem.id] != nil
    }
    
    private func toggleCartItem(shopItem: ShopItem) {
        if cartItems[shopItem.id] == nil {
            cartItems[shopItem.id] = CartItem(item: shopItem, quantity: 1)
        } else {
            cartItems[shopItem.id] = nil
        }
    }
}


struct ShopList_Previews: PreviewProvider {
    static var previews: some View {
        ShopList(availableItems: [
            ShopItem(price: 24.99, id: 1, name: "Turkey",
                     imageName: "turkey", categoryID: 1),
            ShopItem(price: 1.99, id: 2, name: "Hot Drink",
                     imageName: "takeaway_hot_drink", categoryID: 2),
            ShopItem(price: 0.99, id: 3, name: "Asparagus",
                     imageName: "asparagus", categoryID: 4),
            ShopItem(price: 0.49, id: 4, name: "Beetroot", imageName: "beetroot", categoryID: 4),
            ShopItem(price: 0.49, id: 5, name: "Boletus Mushroom", imageName: "boletus_mushroom", categoryID: 4),
            ShopItem(price: 0.99, id: 6, name: "Cherry Donut", imageName: "cherry_donut", categoryID: 3),
            ShopItem(price: 0.25, id: 7, name: "Chili Pepper", imageName: "chili_pepper", categoryID: 4),
            ShopItem(price: 3.99, id: 8, name: "Chinese Noodle", imageName: "chinese_noodle", categoryID: 10),
            ShopItem(price: 1.49, id: 9, name: "Chips", imageName: "chips", categoryID: 5),
            ShopItem(price: 1.49, id: 10, name: "Fries", imageName: "fries", categoryID: 5),
            ShopItem(price: 4.99, id: 11, name: "Gammon", imageName: "gammon", categoryID: 2),
            ShopItem(price: 9.99, id: 12, name: "Italian Pizza",
                     imageName: "italian_pizza", categoryID: 6),
            ShopItem(price: 3.49, id: 13, name: "Lemon Cake",
                     imageName: "lemon_cake", categoryID: 3),
            ShopItem(price: 0.49, id: 14, name: "Pears", imageName: "pears", categoryID: 7),
            ShopItem(price: 17.99, id: 15, name: "Salmon", imageName: "salmon", categoryID: 8),
            ShopItem(price: 5.99, id: 16, name: "Sandwich with Fried Egg", imageName: "sandwich_with_fried_egg", categoryID: 9),
            ShopItem(price: 9.99, id: 17, name: "Street Food",
                     imageName: "street_food", categoryID: 11),
            ShopItem(price: 0.99, id: 18, name: "Sweet Carrots",
                     imageName: "sweet_carrot", categoryID: 4),
            ShopItem(price: 1.99, id: 19, name: "Tomato and Garlic",
                     imageName: "tomato_and_garlic", categoryID: 4)
            ])
    }
}
