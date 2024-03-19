//
//  InformationView.swift
//  TajMahal
//
//  Created by KEVIN on 18/03/2024.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Restaurant Indien")
                    .foregroundStyle(.lightGray)
                    .font(.custom("PlusJakartaSans-Regular-400", size: 12))
                Text("Taj Mahal")
                    .foregroundStyle(.darkGray)
                    .font(.custom("PlusJakartaSans-Bold-700", size: 18))
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
    InformationView()
}
