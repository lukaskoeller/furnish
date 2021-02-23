//
//  Planner.swift
//  furnish
//
//  Created by Lukas Köller on 23.02.21.
//

import SwiftUI
import RealityKit

struct Planner: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ARViewContainer()
            
            HStack {
                Button(action: { print("DEBUG: Cancel Model Placement") }) {
                    Text("Cancel")
                }
                Button(action: { print("DEBUG: Confirm Model Placement") }) {
                    Text("Confirm")
                }
            }
        }.tabItem {
            Image(systemName: "hexagon")
            Text("Planing")
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

struct Planner_Previews: PreviewProvider {
    static var previews: some View {
        Planner()
    }
}
