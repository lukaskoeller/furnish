//
//  ContentView.swift
//  furnish
//
//  Created by Lukas Köller on 29.10.20.
//

import SwiftUI
import RealityKit

struct ContentView : View {
//    private var models: [String] = {
//        // Dynamically get our model file names
//        let filemanager = FileManager.default
//
//        guard let path = Bundle.main.resourcePath,
//              let files = try?
//                filemanager.contentsOfDirectory(atPath: path) else {
//                return []
//        }
//
//        var availableModels: [String] = []
//        for filename in files where filename.hasSuffix("usdz") {
//            let modelName = filename.replacingOccurrences(of: ".usdz", with: "")
//            availableModels.append(modelName)
//        }
//
//        availableModels.append("chair_swan")
//
//        print(availableModels)
//        return availableModels
//
//    }()
    
    let models = Bundle.main.decode([Model].self, from: "models.json")
    
    //private var models: [String] = ["chair_swan", "toy_bigplane"]
    
    var body: some View {
        Navigator(models: models)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

struct Navigator: View {
    var models: [Model]
    
    var body: some View {
        TabView {
            Store(models: models)

            ARViewContainer().tabItem {
                Image(systemName: "hexagon")
                Text("Planing")
            }
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
