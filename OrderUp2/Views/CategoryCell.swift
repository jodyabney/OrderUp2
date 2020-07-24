//
//  CategoryCell.swift
//  OrderUp
//
//  Created by Jody Abney on 7/19/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import SwiftUI

struct CategoryCell: View {
    //MARK: - Properties
    var isSelected: Bool = false
    var selectedCategoryID: Int?
    
    //MARK: - Body
    var categoryItem: CategoryItem
    var body: some View {
        VStack {
            Image(categoryItem.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            Text(self.categoryItem.name)
            .font(.headline)
            .fontWeight(.bold)
                .foregroundColor(isSelected ? .red : .black)
        }
    }
    
    private mutating func toggleIsSelected() {
        isSelected = !isSelected
        if isSelected {
            selectedCategoryID = categoryItem.id
        } else {
            selectedCategoryID = nil
        }
    }
}



struct CategoryCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCell(isSelected: true, categoryItem: CategoryItem(id: 1, name: "Meat", imageName: "turkey"))
    }
}
