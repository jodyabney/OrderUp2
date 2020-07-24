//
//  StepperView.swift
//  OrderUp2
//
//  Created by Jody Abney on 7/24/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    
    //MARK: - Data Dependencies
    @Binding var cartItems: Dictionary<Int, CartItem>
    
    //MARK: - Properties
    var item: ShopItem
    
    //MARK: - Body
    var body: some View {
        ZStack(alignment: .center) {
            Stepper(onIncrement: {
                self.cartItems[self.item.id]!.quantity += 1
            }, onDecrement: {
                self.cartItems[self.item.id]!.quantity -= 1
                if self.cartItems[self.item.id]!.quantity == 0 {
                    self.cartItems[self.item.id] = nil
                }
            }) {
                Text("Value: \(self.cartItems[item.id]?.quantity ?? 0)")
            }
            .foregroundColor(.red)
            .labelsHidden()
            
            Text("\(self.cartItems[item.id]?.quantity ?? 0)")
                .font(Font.system(size: 14))
                .foregroundColor(.red)
        }
    }
}
