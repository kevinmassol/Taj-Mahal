//
//  MenuCellView.swift
//  TajMahal
//
//  Created by KEVIN on 26/03/2024.
//

import SwiftUI

struct MenuCellView: View {
    
    let dish: Dish
    
    let font600 = "PlusJakartaSans-SemiBold-600"
    let font400 = "PlusJakartaSans-Regular-400"

    
    var body: some View {
        HStack(spacing: 18) {
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 112, height: 86)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment:.leading, spacing: 10) {
                Text(dish.name)
                    .font(.custom(font600, size: 14))
                Text(dish.description)
                    .font(.custom(font400, size: 12))
                HStack {
                    Text(dish.price)
                        .font(
                        .custom(font600, size: 12)
                        )
                    Spacer()
                    ZStack {
                        Rectangle()
                            .frame(width: 52, height: 12)
                            .foregroundStyle(.white)
                        PepperView(spiceLevel: dish.spiceLevel)
                    }
                }
            }
        }
        .frame(width: 335, height: 110)
    }
}

#Preview {
    MenuCellView(
        dish: ViewModel().apetizerArray[0]
    )
}
