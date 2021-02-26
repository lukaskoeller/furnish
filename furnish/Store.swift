//
//  Store.swift
//  furnish
//
//  Created by Lukas Köller on 15.12.20.
//

import SwiftUI

struct Store: View {
    // @Binding var selectedModel: String?
    
    var body: some View {
        NavigationView {
            List(models) { model in
                StoreItem(model: model)
            }
            .navigationTitle("Furniture")
        }.tabItem {
            Image(systemName: "bed.double")
            Text("Store")
        }
    }
}

//struct Store_Previews: PreviewProvider {
//    var models: [Model]
//
//    static var previews: some View {
//        Store(models: models)
//    }
//}
