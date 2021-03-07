//
//  ContentView.swift
//  furnish
//
//  Created by Lukas Köller on 29.10.20.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Navigator()
    }
}

struct Navigator: View {
    // @State private var selectedModel: String?
    // @State private var modelConfirmedForPlacement: String?
    
    var body: some View {
        TabView {
            Store()
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
