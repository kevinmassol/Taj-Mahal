//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel {
    case light
    case medium
    case hot
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
