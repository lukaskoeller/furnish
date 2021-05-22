//
//  SectionBox.swift
//  furnish
//
//  Created by Lukas Köller on 20.05.21.
//

import SwiftUI

struct SomeView: View {
    var body: some View {
        Text("Some Content")
    }
}

struct SectionBox<Content: View>: View {
    var heading: String
    @ViewBuilder let content: Content
    
    var body: some View {
        VStack(alignment: .leading) {
            SectionHeading(name: heading)
            content
        }
        .padding(.top)
    }
}

struct SectionBox_Previews: PreviewProvider {
    static var previews: some View {
        SectionBox(heading: "Heading Example") {
            SomeView()
        }
    }
}
