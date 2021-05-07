//
//  DoubleGalleryItem.swift
//  furnish
//
//  Created by Lukas Köller on 07.05.21.
//

import SwiftUI

struct DoubleGalleryItem: View {
    var item: Category
    
    var cornerRadius: CGFloat = 12
    var boxWidth: CGFloat = 190
    var boxHeight: CGFloat
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            item.image
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: boxWidth, height: boxHeight)
                .clipped()
                .cornerRadius(cornerRadius)
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .bottom, endPoint: .center))
                .cornerRadius(cornerRadius)
            Text(item.name)
                .bold()
                .padding(.leading)
                .padding(.bottom, 5)
                .foregroundColor(.white)
        }
    }
}

struct DoubleGalleryItem_Previews: PreviewProvider {
    static var previews: some View {
        DoubleGalleryItem(item: CategoryData().categories.livingAreas[0], boxHeight: 130)
    }
}
