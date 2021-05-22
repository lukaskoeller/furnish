//
//  VCardGallery.swift
//  furnish
//
//  Created by Lukas Köller on 22.05.21.
//

import SwiftUI

struct VCardGallery: View {
    var items: [Model]
    var size: CGFloat

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(items) {
                    item in
                    NavigationLink(destination: ProductDetail(model: item)) {
                        VCard(item: item)
                    }
                }
            }
            .padding(.horizontal)
        }
        .frame(height: size)
    }
}

struct VCardGallery_Previews: PreviewProvider {
    static var models = ModelData().models

    static var previews: some View {
        VCardGallery(
            items: Array(models.prefix(4)),
            size: 185
        )
    }
}
