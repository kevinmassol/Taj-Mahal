//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    
    var body: some View {
        NavigationStack {
            Image(.tajMahal)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 335, height: 423)
            Spacer()
            RestaurantInfoView()
            Spacer()
            VStack {
                ForEach(details) { detail in
                    RestaurantDetailView(detailData: detail)
                }
            }
            Spacer()
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .foregroundStyle(Color.white)
                    .font(.custom(ViewModel.font700, size: 16))
            }
            .frame(width: 335, height: 40)
            .background(.customRed)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            Spacer()
        }
    }
}

#Preview {
    WelcomeView()
}
