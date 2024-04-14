//
//  DescriptionOfTheDish.swift
//  TajMahal
//
//  Created by KEVIN on 25/03/2024.
//

import SwiftUI

struct DescriptionOfTheDish: View {
    
    let dish: Dish
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            ZStack {
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 335, height: 467)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .clipped()
                ZStack {
                    RoundedRectangle(cornerRadius: 11)
                        .frame(width: 74, height: 22)
                        .foregroundStyle(.white)
                    PepperView(spiceLevel: dish.spiceLevel)
                }
                .offset(x: 110, y: -210)
            }
            Spacer()
            VStack(alignment: .leading, spacing: 16) {
                Text("Allergènes:")
                    .fontWeight(.bold)
                    .font(.custom(ViewModel.font600, size: 12))
                    .foregroundStyle(.customLightGray)
                Text(dish.allergens)
                    .font(.custom(ViewModel.font400, size: 12))
                    .foregroundStyle(.customGray)
                Divider()
                    .frame(width: 335, height: 0.75)
                    .foregroundStyle(.dividerGray)
                Text("Ingrédients: ")
                    .font(.custom(ViewModel.font600, size: 12))
                    .foregroundStyle(.customLightGray)
                Text(dish.ingredients)
                    .font(.custom(ViewModel.font400, size: 12))
                    .foregroundStyle(.customGray)
            }
            .padding(.horizontal, 16)
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                    }
                    Text(dish.name)
                }
                .foregroundStyle(.black)
            }
        }
        .padding()
    }
}

#Preview {
    DescriptionOfTheDish(dish: ViewModel().mainCourseArray[0])
}
