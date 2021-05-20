//
//  SingleGallery.swift
//  furnish
//
//  Created by Lukas Köller on 07.05.21.
//

import SwiftUI

struct SingleGallery: View {
    var items: [Model]
    var size: CGFloat
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(items) {
                    model in
                    NavigationLink(destination: ProductDetail(model: model)) {
                        VCard(model: model)
                    }
                }
            }
        }
        .frame(height: size)
    }
}

struct SingleGallery_Previews: PreviewProvider {
    static var models = ModelData().models
    
    static var previews: some View {
        SingleGallery(
            items: Array(models.prefix(4)),
            size: 185
        )
    }
}
