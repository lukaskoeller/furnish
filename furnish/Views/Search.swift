//
//  Search.swift
//  furnish
//
//  Created by Lukas Köller on 23.04.21.
//

import SwiftUI

struct Search: View {
    @EnvironmentObject var modelData: ModelData
    @EnvironmentObject var categoryData: CategoryData

    var body: some View {
        NavigationView {
            ScrollView {
                SectionBox(heading: "Räume") {
                    ZCardGallery(items: categoryData.categories.livingAreas)
                }
                SectionBox(heading: "Kategorien") {
                    List(categoryData.categories.furniture) { item in
                        HStack {
                            item.icon
                            Text(item.name)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                    .frame(height: CGFloat(categoryData.categories.furniture.count) * 44)
                }
                SectionBox(heading: "Stile") {
                    DoubleGallery(items: categoryData.categories.furnishingStyles)
                }
                SectionBox(heading: "Inspiration") {
                    VCardGallery(items: modelData.models, size: 130)
                }
//                ForEach(modelData.livingAreas.keys.sorted(), id: \.self) { key in
//                    SingleGallery(items: modelData.livingAreas[key]!, size: 185)
//                }
//                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("furnish")
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
            .environmentObject(CategoryData())
    }
}
