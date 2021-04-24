//
//  CategoryRow.swift
//  furnish
//
//  Created by Lukas Köller on 24.04.21.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Model]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) {
                        model in CategoryItem(model: model)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var models = ModelData().models
    
    static var previews: some View {
        CategoryRow(
            categoryName: models[0].category.rawValue,
            items: Array(models.prefix(4))
        )
    }
}
