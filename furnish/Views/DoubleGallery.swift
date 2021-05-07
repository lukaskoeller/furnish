//
//  DoubleGallery.swift
//  furnish
//
//  Created by Lukas Köller on 07.05.21.
//

import SwiftUI

struct DoubleGallery: View {
    var heading: String
    var items: [Category]
    
    var spacing: CGFloat = 12
    var boxHeight: CGFloat = 130
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text(heading)
                .font(.headline)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: layout, alignment: .top, spacing: spacing) {
                    ForEach(items) { livingArea in
                        DoubleGalleryItem(item: livingArea, boxHeight: boxHeight)
                    }
                }
                .frame(height: boxHeight * 2 + spacing)
//                .padding(.horizontal)
            }
        }
    }
}

struct DoubleGallery_Previews: PreviewProvider {
    static var categories = CategoryData().categories
    
    static var previews: some View {
        Rooms(
            heading: "Räume",
            items: categories.livingAreas
        )
    }
}
