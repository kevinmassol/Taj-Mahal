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
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .foregroundStyle(Color.white)
            }
            .frame(width: 335, height: 40)
            .background(.customRed)
            .cornerRadius(10)
        }
    }
}

#Preview {
    WelcomeView()
}
