//
//  ZCard.swift
//  furnish
//
//  Created by Lukas Köller on 20.05.21.
//

import SwiftUI

struct ZCard: View {
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

struct ZCard_Previews: PreviewProvider {
    static var previews: some View {
        ZCard(item: CategoryData().categories.livingAreas[0], boxHeight: 130)
    }
}
