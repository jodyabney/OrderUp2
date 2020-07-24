//
//  ShopRow.swift
//  ShoppingCart
//
//  Created by Jody Abney on 7/18/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct ShopRow: View {
    var inCart: Bool
    var shopItem: ShopItem
    var body: some View {
        HStack {
            Image(shopItem.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 75)
            VStack(alignment: .leading) {
                Text(shopItem.name)
                    .multilineTextAlignment(.leading)
                Text("$\(String(format: "%.2f", shopItem.price))")
                .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
            if inCart {
                StepperView()
//                Image("checked")
//                .resizable()
//                .aspectRatio(1, contentMode: .fit)
//                .frame(maxWidth: 50)
            } else {
                AddToCart()
            }
        }
    }
}

struct ShopRow_Previews: PreviewProvider {
    static var previews: some View {
        ShopRow(inCart: false, shopItem: ShopItem(price: 9.99, id: 1, name: "Sandwich with Feied Egg", imageName: "sandwich_with_fried_egg", categoryID: 9))
        
    }
}
