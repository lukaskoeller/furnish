//
//  Store.swift
//  furnish
//
//  Created by Lukas Köller on 15.12.20.
//

import SwiftUI

struct Store: View {
    // @Binding var selectedModel: String?
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List(modelData.models) { model in
                StoreItem(model: model)
            }
            .navigationTitle("Furniture")
        }.tabItem {
            Image(systemName: "bed.double")
            Text("Store")
        }
    }
}

struct Store_Previews: PreviewProvider {
    static var previews: some View {
        Store()
            .environmentObject(ModelData())
    }
}
