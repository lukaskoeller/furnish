//
//  Store.swift
//  furnish
//
//  Created by Lukas Köller on 15.12.20.
//

import SwiftUI

struct Store: View {
    var models: [String]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< models.count) {
                    index in
                    HStack {
                        Image(uiImage: UIImage(named: models[index])!)
                            .resizable()
                            .frame(height: 60)
                            .aspectRatio(1/1, contentMode: .fit)
                        Text(models[index])

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
