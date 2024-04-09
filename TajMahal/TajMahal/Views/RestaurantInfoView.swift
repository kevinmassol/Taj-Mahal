//
//  RestaurantInfoView.swift
//  TajMahal
//
//  Created by KEVIN on 18/03/2024.
//

import SwiftUI

struct RestaurantInfoView: View {
    
    let font400 = "PlusJakartaSans-Regular-400"
    let font700 = "PlusJakartaSans-Bold-700"
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Restaurant Indien")
                    .foregroundStyle(.customLightGray)
                    .font(.custom(font400, size: 12))
                Text("Taj Mahal")
                    .foregroundStyle(.customDarkGray)
                    .font(.custom(font700, size: 18))
            }
            Spacer()
            Image(.logo)
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(.customGray)
                .frame(width: 40, height: 40)
        }
        .frame(width: 335, height: 40)
    }
}

#Preview {
    RestaurantInfoView()
}
