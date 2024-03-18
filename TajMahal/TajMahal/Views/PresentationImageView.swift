//
//  PresentationImageView.swift
//  TajMahal
//
//  Created by KEVIN on 18/03/2024.
//

import SwiftUI

struct PresentationImageView: View {
    var body: some View {
        Image(.tajMahal)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 335, height: 423)
    }
}

#Preview {
    PresentationImageView()
}
