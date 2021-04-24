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
//            ARViewContainer()
            
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

//struct ARViewContainer: UIViewRepresentable {
//
//    func makeUIView(context: Context) -> ARView {
//
//        let arView = ARView(frame: .zero)
//
//        // See https://developer.apple.com/documentation/arkit/content_anchors/visualizing_and_interacting_with_a_reconstructed_scene
//        arView.automaticallyConfigureSession = false
//        let configuration = ARWorldTrackingConfiguration()
//        configuration.planeDetection = [.horizontal, .vertical] // Smooths flat surfaces
//        configuration.sceneReconstruction = .meshWithClassification
//        configuration.environmentTexturing = .automatic
//
//        // add sceneReconstruction if device supports Lidar
//        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh) {
//            configuration.sceneReconstruction = .mesh
//        }
//
//        arView.debugOptions.insert(.showSceneUnderstanding)
//
//        arView.session.run(configuration)
//
//        return arView
//
//    }
//
//    func updateUIView(_ uiView: ARView, context: Context) {
//        // Places model into the scene
//        let filename = "chair_swan.usdz"
//        let modelEntity = try!ModelEntity.load(named: filename)
//        let anchorEntity = AnchorEntity(plane: .any)
//        anchorEntity.addChild(modelEntity)
//
//        uiView.scene.addAnchor(anchorEntity)
//    }
//
//}

struct Planner_Previews: PreviewProvider {
    static var previews: some View {
        Planner()
    }
}
