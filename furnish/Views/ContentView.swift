//
//  ContentView.swift
//  furnish
//
//  Created by Lukas Köller on 29.10.20.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    
    let models = Bundle.main.decode([Model].self, from: "models.json")
    
    //private var models: [String] = ["chair_swan", "toy_bigplane"]
    
    var body: some View {
        Navigator(models: models)
    }
}

struct Navigator: View {
    var models: [Model]
    @State private var selectedModel: String?
    @State private var modelConfirmedForPlacement: String?
    
    var body: some View {
        TabView {
            Store(models: models, selectedModel: $selectedModel)
            Planner()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
