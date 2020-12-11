//
//  ContentView.swift
//  furnish
//
//  Created by Lukas Köller on 29.10.20.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    private var models: [String] = ["chair_swan", "toy_bigplane"]
    
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
    var models: [String]
    
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
