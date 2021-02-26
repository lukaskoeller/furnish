//
//  StoreItem.swift
//  furnish
//
//  Created by Lukas Köller on 18.02.21.
//

import SwiftUI

struct StoreItem: View {
    var model: Model
    // @Binding var selectedModel: String?

    var body: some View {
        HStack {
            model.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(model.name)
            Spacer()
            Button(action: {
                print("DEBUG: set selectedModel")
                // selectedModel = model.name
            }) {
                Image(systemName: "plus")
            }
        }
    }
}

struct StoreItem_Previews: PreviewProvider {
    static var previews: some View {
        StoreItem(model: models[0])
    }
}
