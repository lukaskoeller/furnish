//
//  Models.swift
//  furnish
//
//  Created by Lukas Köller on 17.02.21.
//

import Foundation
import SwiftUI

struct Model: Codable, Identifiable {
    var id: UUID
    var name: String
    
//    var category: Category
//    enum Category: String, CaseIterable, Codable {
//        case chairs = "chairs"
//        case tables = "tables"
//    }
    
    var categories: Categories
    struct Categories: Codable {
        var livingAreas: [LivingAreas]
        var furniture: [Furniture]
        var furnishingStyles: [FurnishingStyles]
    }
    
    private var file: String
    var image: Image {
        Image(file)
    }
}

enum Furniture: String, CaseIterable, Codable {
    case chairs = "Stühle"
    case tables = "Tische"
    case sofas = "Sofas"
    case closets = "Kleiderschränke"
    case beds = "Betten"
    case bathroomFurniture = "Badmöbel"
    case kitchenAppliances = "Küchengeräte"
}

enum LivingAreas: String, CaseIterable, Codable {
    case livingRoom = "Wohnzimmer"
    case bedroom = "Schlafzimmer"
    case bathroom = "Badezimmer"
    case kitchen = "Küche"
    case homeOffice = "Home Office"
}

enum FurnishingStyles: String, CaseIterable, Codable {
    case scandinavian = "Skandinavisch"
    case countryStyle = "Landhausstil"
}
