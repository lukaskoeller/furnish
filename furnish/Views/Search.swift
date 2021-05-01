//
//  Search.swift
//  furnish
//
//  Created by Lukas Köller on 23.04.21.
//

import SwiftUI

struct Search: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationView {
            List {
                ForEach(modelData.livingAreas.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.livingAreas[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Welcome!")
        }.tabItem {
            Image(systemName: "magnifyingglass")
            Text("Search")
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
            .environmentObject(ModelData())
    }
}
