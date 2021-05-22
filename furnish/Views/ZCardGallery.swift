//
//  ZCardGallery.swift
//  furnish
//
//  Created by Lukas Köller on 22.05.21.
//

import SwiftUI

struct ZCardGallery: View {
    var items: [Category]
    
    var spacing: CGFloat = 12
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: spacing) {
                ForEach(items) {
                    model in
                    ZCard(item: model, boxHeight: 130)
//                    NavigationLink(destination: ProductDetail(model: model)) {
//
//                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ZCardGallery_Previews: PreviewProvider {
    static var categories = CategoryData().categories

    static var previews: some View {
        ZCardGallery(items: categories.livingAreas)
    }
}
