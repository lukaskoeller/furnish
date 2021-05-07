//
//  Rooms.swift
//  furnish
//
//  Created by Lukas Köller on 01.05.21.
//

import SwiftUI

struct Rooms: View {
    var heading: String
    var items: [Category]
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var cornerRadius: CGFloat = 12
    var boxWidth: CGFloat = 190
    var boxHeight: CGFloat = 130
    var spacing: CGFloat = 12

    var body: some View {
        VStack(alignment: .leading) {
            Text(heading)
                .font(.headline)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: layout, alignment: .top, spacing: spacing) {
                    ForEach(items) { livingArea in
                        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
                            livingArea.image
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
                            Text(livingArea.name)
                                .bold()
                                .padding(.leading)
                                .padding(.bottom, 5)
                                .foregroundColor(.white)
                        }
                    }
                }
                .frame(height: boxHeight * 2 + spacing)
//                .padding(.horizontal)
            }
        }
    }
}

struct Rooms_Previews: PreviewProvider {
    static var categories = CategoryData().categories
    
    static var previews: some View {
        Rooms(
            heading: "Räume",
            items: categories.livingAreas
        )
    }
}
