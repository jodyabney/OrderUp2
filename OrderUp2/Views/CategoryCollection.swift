//
//  CategoryCollection.swift
//  OrderUp2
//
//  Created by Jody Abney on 7/24/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct CategoryCollection: View {
    
    //MARK: - Data Dependencies
    @Binding var selectedCategory: CategoryItem
    
    //MARK: - Properties
    var categories: [CategoryItem]
    
    //MARK: - View
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(categories) { categoryItem in
                    CategoryCell(selectedCategory: self.$selectedCategory,
                                 categoryItem: categoryItem)
                }
            }
            .padding(.bottom, 35.0)
            
        }
    }
}
