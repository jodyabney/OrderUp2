//
//  ShopRow.swift
//  OrderUp2
//
//  Created by Jody Abney on 7/24/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct ShopRow: View {
    
    //MARK: - Data Dependecies
    @Binding var cartItems: Dictionary<Int, CartItem>
    
    //MARK: - Properties
    var item: ShopItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 75)
            VStack(alignment: .leading) {
                Text(item.name)
                    .multilineTextAlignment(.leading)
                Text("$\(String(format: "%.2f", item.price))")
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
            if inCart(shopItem: item) {
                StepperView(cartItems: self.$cartItems, item: item)
            } else {
                AddToCart()
                    .onTapGesture {
                        self.toggleCartItem(shopItem: self.item)
                }
            }
        }
    }
    
    private func inCart(shopItem: ShopItem) -> Bool {
        return cartItems[shopItem.id] != nil
    }
    
    private func toggleCartItem(shopItem: ShopItem) {
        if cartItems[shopItem.id] == nil {
            cartItems[shopItem.id] = CartItem(item: shopItem,
                                              quantity: 1)
        } else {
            cartItems[shopItem.id] = nil
        }
    }
}


