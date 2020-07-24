//
//  AddToCartButton.swift
//  OrderUp
//
//  Created by Jody Abney on 7/19/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct AddToCart: View {
    var body: some View {
        ZStack {
            Capsule()
                .fill(Color.red)
            .frame(width: 100, height: 25,
            alignment: .center)
            
            Text("Add to cart")
                .font(Font.system(size: 12))
                .fontWeight(.bold)
                .font(.body)
                .foregroundColor(.white)
        }
        .shadow(radius: 5.0)
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCart()
    }
}
