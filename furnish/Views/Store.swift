//
//  Store.swift
//  furnish
//
//  Created by Lukas Köller on 10.12.20.
//

import SwiftUI

struct Store: View {
    var models: [String]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< self.models.count) {
                    index in
                    HStack {
                        Image(uiImage: UIImage(named: self.models[index])!)
                            .resizable()
                            .frame(height: 60)
                            .aspectRatio(1/1, contentMode: .fit)
                        Text(self.models[index])
                        
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
//    var models: [String]
//
//    static var previews: some View {
//        Store(models: models)
//    }
//}
