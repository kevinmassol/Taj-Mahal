//
//  DetailRestaurantView.swift
//  TajMahal
//
//  Created by KEVIN on 18/03/2024.
//

import SwiftUI

struct RestaurantDetailView: View {
    var body: some View {
        HStack {
            Image(icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 12, height: 12)
            Text(TextOnTheLeft)
            Spacer()
            Text(TextOnTheRight)
        }
        .font(.custom("PlusJakartaSans-SemiBold-600", size: 12))
        .frame(width: 335, height: 15)
        .foregroundStyle(.customLightGray)
    }
}

#Preview {
    RestaurantDetailView(
        icon: "horloge",
        TextOnTheLeft: "Mardi",
        TextOnTheRight: "11h30 - 14h30・ 18h30 - 22h00"
    )
}
