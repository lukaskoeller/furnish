//
//  Store.swift
//  furnish
//
//  Created by Lukas Köller on 15.12.20.
//

import SwiftUI

struct Store: View {
    var models: [Model]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(models) {
                    model in
                    HStack {
                        Image(uiImage: UIImage(named: model.file)!)
                            .resizable()
                            .frame(height: 60)
                            .aspectRatio(1/1, contentMode: .fit)
                        Text(model.name)

                        Spacer()
                        Image(systemName: "plus")
                    }
                }
            }.navigationTitle("Furniture")
        }.tabItem {
            Image(systemName: "bed.double")
            Text("Store")
        }
    }
}

//struct Store_Previews: PreviewProvider {
//    static var previews: some View {
//        Store()
//    }
//}
