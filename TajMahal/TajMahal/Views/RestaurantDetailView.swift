//
//  DetailRestaurantView.swift
//  TajMahal
//
//  Created by KEVIN on 18/03/2024.
//

import SwiftUI

struct RestaurantDetailView: View {
    
    let detailData: RestaurantDetail
    
    var body: some View {
        HStack {
            Image(detailData.icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 12, height: 12)
            Text(detailData.leftText)
            Spacer()
            Text(detailData.rightText)
        }
        .font(.custom(ViewModel.font600, size: 12))
        .frame(width: 335, height: 15)
        .foregroundStyle(.customLightGray)
    }
}

#Preview {
    RestaurantDetailView(detailData: details[0])
}
