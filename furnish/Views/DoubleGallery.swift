//
//  DoubleGallery.swift
//  furnish
//
//  Created by Lukas Köller on 07.05.21.
//

import SwiftUI

struct DoubleGallery: View {
    var items: [Category]
    
    var spacing: CGFloat = 12
    var boxHeight: CGFloat = 130
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: layout, alignment: .top, spacing: spacing) {
                ForEach(items) { livingArea in
                    ZCard(item: livingArea, boxHeight: boxHeight)
                }
            }
            .frame(height: boxHeight * 2 + spacing)
            .padding(.horizontal)
        }
    }
}

struct DoubleGallery_Previews: PreviewProvider {
    static var categories = CategoryData().categories
    
    static var previews: some View {
        DoubleGallery(items: categories.livingAreas)
    }
}
