//
//  SingleGalleryItem.swift
//  furnish
//
//  Created by Lukas Köller on 07.05.21.
//

import SwiftUI

struct SingleGalleryItem: View {
    var model: Model
    
    var body: some View {
        VStack(alignment: .leading) {
            model.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(model.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct SingleGalleryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(model: ModelData().models[0])
    }
}
