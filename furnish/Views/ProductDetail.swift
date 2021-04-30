//
//  ProductDetail.swift
//  furnish
//
//  Created by Lukas Köller on 25.04.21.
//

import SwiftUI

struct ProductDetail: View {
    var model: Model
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                model.image
                Text(model.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var models = ModelData().models
    
    static var previews: some View {
        ProductDetail(model: models[0])
    }
}
