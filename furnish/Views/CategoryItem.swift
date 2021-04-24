//
//  CategoryItem.swift
//  furnish
//
//  Created by Lukas Köller on 24.04.21.
//

import SwiftUI

struct CategoryItem: View {
    var model: Model
    
    var body: some View {
        VStack(alignment: .leading) {
            model.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(model.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(model: ModelData().models[0])
    }
}
