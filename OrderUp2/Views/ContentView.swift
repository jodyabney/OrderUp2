//
//  ContentView.swift
//  OrderUp2
//
//  Created by Jody Abney on 7/22/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    var categories: [CategoryItem] = CategoryItem.all()
    var availableItems: [ShopItem] = ShopItem.all()
    
    
    //MARK: - Data Dependencies
    @State var selectedCategory: CategoryItem = CategoryItem(id: 0, name: "All", imageName: "all")
    @State var cartItems: Dictionary<Int, CartItem> = [:]
    
    //MARK: - View
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Categories")
                    .font(.headline)
                    .padding(.leading)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(categories) { categoryItem in
                            VStack {
                                Image(categoryItem.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: 75)
                                if categoryItem == self.selectedCategory {
                                    Text(categoryItem.name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.red)
                                } else {
                                    Text(categoryItem.name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                }
                            }
                            .frame(width: 100, height: 100)
                            .onTapGesture {
                                self.selectedCategory = categoryItem
                            }
                        }
                    }
                    .padding(.bottom, 35.0)
                    
                }
                Text("Menu")
                    .font(.headline)
                    .padding(.leading)
                List(availableItems.filter({ (shopItem) -> Bool in
                    if selectedCategory.id == 0 {
                        return true
                    } else {
                        return shopItem.categoryID == selectedCategory.id
                    }
                })) { item in
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
                        if self.inCart(shopItem: item) {
                            ZStack(alignment: .center) {
                                Stepper(onIncrement: {
                                    self.cartItems[item.id]!.quantity += 1
                                }, onDecrement: {
                                    self.cartItems[item.id]!.quantity -= 1
                                    if self.cartItems[item.id]!.quantity == 0 {
                                        self.cartItems[item.id] = nil
                                    }
                                }) {
                                    Text("Value: \(self.cartItems[item.id]!.quantity)")
                                }
                                .foregroundColor(.red)
                                .labelsHidden()
                                
                                Text("\(self.cartItems[item.id]!.quantity)")
                                    .font(Font.system(size: 14))
                                    .foregroundColor(.red)
                            }
                        } else {
                            AddToCart()
                                .onTapGesture {
                                    self.toggleCartItem(shopItem: item)
                            }
                        }
                    }
                    Spacer()
                }
                .navigationBarTitle("OrderUp")
                .navigationBarItems(trailing: Cart(cartItems: cartItems))
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
