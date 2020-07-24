//
//  CategoryCell.swift
//  OrderUp2
//
//  Created by Jody Abney on 7/24/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct CategoryCell: View {
    
    //MARK: - Data Dependencies
    @Binding var selectedCategory: CategoryItem
    
    //MARK: - Properties
    var categoryItem: CategoryItem
    
    //MARK: - View
    var body: some View {
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
            self.selectedCategory = self.categoryItem
        }
    }
}
