//
//  Planner.swift
//  furnish
//
//  Created by Lukas Köller on 23.02.21.
//

import SwiftUI
import RealityKit
import ARKit

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
        
//        arView.automaticallyConfigureSession = false
//        let configuration = ARWorldTrackingConfiguration()
//        configuration.sceneReconstruction = .meshWithClassification
//
//        let configuration = ARWorldTrackingConfiguration()
//        configuration.planeDetection = [.horizontal, .vertical]
//        configuration.environmentTexturing = .automatic
//
//        if
//            ARWorldTrackingConfiguration
//                .supportsSceneReconstruction(.mesh) {
//            configuration.sceneReconstruction = .mesh
//        }

//        arView.debugOptions.insert(.showSceneUnderstanding)
//
//        arView.session.run(configuration)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

struct Planner_Previews: PreviewProvider {
    static var previews: some View {
        Planner()
    }
}
