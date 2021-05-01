//
//  Rooms.swift
//  furnish
//
//  Created by Lukas Köller on 01.05.21.
//

import SwiftUI

struct Rooms: View {
    
    var rooms: [String] = ["Wohnzimmer", "Badezimmer", "Schlafzimmer"];

    var body: some View {
        VStack(alignment: .leading) {
            Text("Räume")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(rooms, id: \.self) {
                        room in Text(room)
                    }
                }
            }
        }
    }
}

struct Rooms_Previews: PreviewProvider {
//    static var categories = ModelData().categories
    
    static var previews: some View {
        Rooms()
    }
}
