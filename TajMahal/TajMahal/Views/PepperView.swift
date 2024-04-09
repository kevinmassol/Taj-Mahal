//
//  PepperView.swift
//  TajMahal
//
//  Created by KEVIN on 01/04/2024.
//

import SwiftUI

struct PepperView: View {
    
    let spiceLevel: SpiceLevel
    
    // Fonction pour afficher les images de piment en fonction du niveau de piquant
    func spiceLevelImages(level: SpiceLevel) -> some View {
        
        let redPepperImage = Image(.pimentRed)
            .resizable()
            .frame(width: 12, height: 12)
        let grayPepperImage = Image(.piment)
            .resizable()
            .frame(width: 12, height: 12)
        
        return HStack(spacing: 2) {
            ForEach(0..<level.rawValue, id: \.self) { spiceLevel in
                redPepperImage
            }
            ForEach(level.rawValue..<SpiceLevel.hot.rawValue, id: \.self) { spiceLevel in
                grayPepperImage
            }
        }
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 11)
                .frame(width: 74, height: 22)
                .offset(x: 110, y: -210)
                .foregroundStyle(.white)
            spiceLevelImages(level: spiceLevel)
        }
    }
}

#Preview {
    PepperView(
        spiceLevel: .light
    )
}
