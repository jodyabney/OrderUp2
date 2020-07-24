//
//  Cart.swift
//  ShoppingCart
//
//  Created by Jody Abney on 7/18/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct Cart: View {
    var cartItems: Dictionary<Int, CartItem>
    var cartQuantity: Int {
        var quantity = 0
        for item in cartItems.values {
            quantity += item.quantity
        }
        return quantity
    }
    var body: some View {
        ZStack {
            Image("cart")
            .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 50)
            ZStack {
                Circle()
                .fill(Color.red)
                .frame(maxWidth: 30)
                Text("\(cartQuantity)")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
        .offset(x: 20, y: -10)
            .opacity(cartQuantity > 0 ? 1.0 : 0)
        }
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart(cartItems: [
            1 : CartItem(item: ShopItem(price: 10.99, id: 1, name: "Turkey", imageName: "turkey", categoryID: 1),
                     quantity: 3),
            2 : CartItem(item: ShopItem(price: 10.99, id: 1, name: "Gammon", imageName: "gammon", categoryID: 1),
            quantity: 2)
        ])
    }
}
