//
//  MenuCellView.swift
//  TajMahal
//
//  Created by KEVIN on 26/03/2024.
//

import SwiftUI

struct MenuCellView: View {
    
    let dish: Dish
    let spicy: SpiceLevel = .light
    
    var body: some View {
        HStack(spacing: 18) {
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 112, height: 86)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment:.leading, spacing: 10) {
                Text(dish.name)
                    .font(.custom("PlusJakartaSans-SemiBold-600", size: 14))
                Text(dish.description)
                    .font(.custom("PlusJakartaSans-Regular-400", size: 12))
                HStack {
                    Text(dish.price)
                        .font(
                            .custom("PlusJakartaSans-SemiBold-600", size: 12)
                        )
                    Spacer()
                    ZStack {
                        Rectangle()
                            .frame(width: 52, height: 12)
                            .foregroundStyle(.white)
                        HStack {
                            switch spicy {
                            case .light:
                                HStack {
                                    Image(.pimentRed)
                                    Image(.piment)
                                    Image(.piment)
                                }
                            case .medium:
                                HStack {
                                    Image(.pimentRed)
                                    Image(.pimentRed)
                                    Image(.piment)
                                }
                            case .hot:
                                HStack {
                                    Image(.pimentRed)
                                    Image(.pimentRed)
                                    Image(.pimentRed)
                                }
                            }
                        }
                    }
                }
            }
        }
        .frame(width: 335, height: 110)
    }
}

#Preview {
    MenuCellView(
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
