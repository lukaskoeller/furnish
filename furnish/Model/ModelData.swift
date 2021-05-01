//
//  ModelData.swift
//  furnish
//
//  Created by Lukas Köller on 27.02.21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var models: [Model] = load("models.json")
    
//    var categories: [String: [Model]] {
//        Dictionary(
//            grouping: models,
//            by: { $0.category.rawValue }
//        )
//    }
    
    var rooms: [String: [Model]] = [:]
    var furniture: [String: [Model]] = [:]
    var style: [String: [Model]] = [:]
    
    init() {
        
        models.forEach { model in
            model.categories.rooms.forEach { cat in
                rooms[cat.rawValue, default: []].append(model)
            }
        }
        
        models.forEach { model in
            model.categories.furniture.forEach { cat in
                rooms[cat.rawValue, default: []].append(model)
            }
        }
        
        models.forEach { model in
            model.categories.style.forEach { cat in
                rooms[cat.rawValue, default: []].append(model)
            }
        }
    }
}

//var models: [Model] = load("models.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
