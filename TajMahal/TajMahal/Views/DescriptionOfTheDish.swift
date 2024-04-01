//
//  DescriptionOfTheDish.swift
//  TajMahal
//
//  Created by KEVIN on 25/03/2024.
//

import SwiftUI

struct DescriptionOfTheDish: View {
    
    let dish: Dish
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 335, height: 467)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .clipped()
//                PepperView()
            }
            Spacer()
            // Problème maquette couleur ? Titre et texte même couleur mais différent
            VStack(alignment: .leading, spacing: 16) {
                Text("Allergènes:")
                    .font(.custom("PlusJakartaSans-SemiBold-600", size: 12))
                    .foregroundStyle(.lightGray)
                Text(dish.allergens)
                    .font(.custom("PlusJakartaSans-Regular-400", size: 12))
                    .foregroundStyle(.customGray)
                Divider()
                    .frame(width: 335, height: 0.75)
                    .foregroundStyle(.dividerGray)
                Text("Ingrédients: ")
                    .font(.custom("PlusJakartaSans-SemiBold-600", size: 12))
                    .foregroundStyle(.lightGray)
                Text(dish.ingredients)
                    .font(.custom("PlusJakartaSans-Regular-400", size: 12))
                    .foregroundStyle(.customGray)
            }
            Spacer()
        }
        .navigationTitle(dish.name)
        .toolbarRole(.editor)
        .padding()
    }
}

#Preview {
    DescriptionOfTheDish(
        dish: Dish(
            name: "Samosas aux légumes",
            description: "Délicieux chaussons frits garnis de légumes épicés",
            allergens: "Farine de blé",
            ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile",
            spiceLevel: .medium,
            imageName: "Samosas",
            price: "5,50€"
        )
    )
}
