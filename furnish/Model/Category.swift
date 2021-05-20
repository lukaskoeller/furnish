//
//  Category.swift
//  furnish
//
//  Created by Lukas Köller on 01.05.21.
//

import Foundation
import SwiftUI

struct Categories: Codable {
    var livingAreas: [Category]
    var furniture: [Category]
    var furnishingStyles: [Category]
}

struct Category: Codable, Identifiable {
    var id: UUID = UUID()
    var name: String
    private var file: String
    var image: Image {
        Image(file)
    }
    var icon: Image {
        Image(systemName: file)
    }
    
    private enum CodingKeys : String, CodingKey { case name, file }
}
