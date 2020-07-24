//
//  ContentView.swift
//  OrderUp2
//
//  Created by Jody Abney on 7/22/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Data Dependencies
    @State var cartItems: Dictionary<Int, CartItem> = [:]
    @State var selectedCategory: CategoryItem = CategoryItem(id: 0,
                                                             name: "All",
                                                             imageName: "all")
    
    //MARK: - Properties
    var categories: [CategoryItem] = CategoryItem.all()
    var availableItems: [ShopItem] = ShopItem.all()
    
    //MARK: - View
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                // set up category collection
                Text("Categories")
                    .font(.headline)
                    .padding(.leading)
                CategoryCollection(selectedCategory: $selectedCategory,
                                   categories: categories)
                // set up menu list
                Text("Menu")
                    .font(.headline)
                    .padding(.leading)
                ShoppingList(cartItems: $cartItems,
                             selectedCategory: $selectedCategory,
                             availableItems: availableItems)
            }
            .navigationBarTitle("OrderUp")
            .navigationBarItems(trailing: Cart(cartItems: cartItems))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
