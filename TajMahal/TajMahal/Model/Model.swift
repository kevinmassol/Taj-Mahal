//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel: Int, CaseIterable {
    case light = 1
    case medium = 2
    case hot = 3
}

// Représente l'objet "plat", qui figure sur la carte du menu
struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let allergens: String
    let ingredients: String
    let spiceLevel: SpiceLevel
    let imageName: String
    let price: String
}
