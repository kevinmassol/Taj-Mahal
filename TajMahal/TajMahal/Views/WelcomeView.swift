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
            PresentationImageView()
            Spacer()
            InformationView()
            Spacer()
            DetailRestaurantView(icon: "horloge", TextOnTheLeft: "Mardi", TextOnTheRight: "11h30 - 14h30・ 18h30 - 22h00")
            DetailRestaurantView(icon: "service", TextOnTheLeft: "Type de Service", TextOnTheRight: "À emporter")
            DetailRestaurantView(icon: "localisation", TextOnTheLeft: "12 Avenue de la Brique - 75010 Paris", TextOnTheRight: "")
            DetailRestaurantView(icon: "globe", TextOnTheLeft: "www.tajmahal.fr", TextOnTheRight: "")
            DetailRestaurantView(icon: "phone", TextOnTheLeft: "06 12 34 56 78", TextOnTheRight: "")
            Spacer()
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .foregroundStyle(Color.white)
                    .font(.custom("PlusJakartaSans-Bold-700", size: 16))
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
