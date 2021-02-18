//
//  StoreItem.swift
//  furnish
//
//  Created by Lukas Köller on 18.02.21.
//

import SwiftUI

struct StoreItem: View {
    var model: Model

    var body: some View {
        Image(uiImage: UIImage(named: model.file)!)
            .resizable()
            .frame(height: 60)
            .aspectRatio(1/1, contentMode: .fit)
        Text(model.name)

        Spacer()
        Image(systemName: "plus")
    }
}

//struct StoreItem_Previews: PreviewProvider {
//    var model: Model
//
//    static var previews: some View {
//        StoreItem(model: model)
//    }
//}
