//
//  BMIResultView.swift
//  BMICalc
//
//  Created by Susmitha Perikala on 05/11/24.
//

import SwiftUI

struct BMIResultView: View {

    @Binding var bmiBrain: BMIBrain
    @Environment(\.dismiss) var dismiss
    var body: some View {

            ZStack {
                LinearGradient(gradient: Gradient(colors: [.pink, .white, .white, .pink]),
                startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                VStack {
                                    Text("BMI Value: ")
                                        .fontWeight(.bold)
                                        .foregroundStyle(.pink)
                                        .padding(.top, -70)
                                        .font(.system(size: 43))
                                    Text(bmiBrain.bmiVal)
                                        .textModifier()
                                        .padding(.top, -25)
                                    Text("Your BMI Category is:")
                                        .textModifier()
                                        .padding(.top, 10)
                                    Text("\(Image(systemName: "heart.circle")) \(bmiBrain.categoryBMI()) \(Image(systemName: "heart.circle"))")
                                    // swiftlint:disable:previous line_length
                                        .padding(.top, 20)
                                        .textModifier()
                                    Button("Save") {
                                        let bmiViewModel = BMIViewModel(weight: Int(bmiBrain.weight),
                                                                        height: Int(bmiBrain.height),
                                                                        bmiVal: bmiBrain.bmiVal,
                                                                        bmiCategory: bmiBrain.bmiCategory)
                                        bmiViewModel.saveSelections(bmiBrain: bmiBrain)
                                            dismiss()
                                    }
                                    .movingbutton()

                                }
            }
    }
}

#Preview {
    BMIResultView(bmiBrain: .constant(BMIBrain(weight: 50, height: 50)))
}
