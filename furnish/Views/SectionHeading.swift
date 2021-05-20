//
//  SectionHeading.swift
//  furnish
//
//  Created by Lukas Köller on 10.05.21.
//

import SwiftUI

struct SectionHeading: View {
    var name: String
    
    var body: some View {
        Text(name)
            .font(.headline)
//            .padding(.leading, 15)
            .padding(.top, 5)
    }
}

struct SectionHeading_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeading(name: "Einrichtungsstile")
    }
}
