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
    var furnishingStyle: [Category]
}

struct Category: Codable {
    var name: String
    var file: String
    var image: Image {
        Image(file)
    }
}
