//
//  Models.swift
//  furnish
//
//  Created by Lukas Köller on 17.02.21.
//

// import Foundation
import SwiftUI

struct Model: Codable, Identifiable {
    var id: UUID
    var name: String
    
//    var category: Category
//    enum Category: String, CaseIterable, Codable {
//        case chairs = "chairs"
//        case tables = "tables"
//    }
    
    private var file: String
    var image: Image {
        Image(file)
    }
}
