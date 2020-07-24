//
//  ShoppingList.swift
//  OrderUp2
//
//  Created by Jody Abney on 7/24/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct ShoppingList: View {
    
    //MARK: - Data Dependencies
    @Binding var cartItems: Dictionary<Int, CartItem>
    @Binding var selectedCategory: CategoryItem
    
    //MARK: - Properties
    var availableItems: [ShopItem]
    
    //MARK: - View
    var body: some View {
        List(availableItems.filter({ (shopItem) -> Bool in
            if selectedCategory.id == 0 { // all categories selected
                return true
            } else {
                return shopItem.categoryID == selectedCategory.id
            }
        })) { item in
            ShopRow(cartItems: self.$cartItems, item: item)
            Spacer()
        }
    }
}
