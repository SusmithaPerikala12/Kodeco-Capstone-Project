//
//  BMIResultView.swift
//  BMICalc
//
//  Created by Susmitha Perikala on 05/11/24.
//

import SwiftUI

struct BMIResultView: View {

    @Binding var bmiBrain: BMIBrain
    var body: some View {

            ZStack {
                LinearGradient(gradient: Gradient(colors: [.pink, .white, .white, .pink]),
                startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                VStack {
                    Text("BMI Value: ")
                        .fontWeight(.bold)
                        .foregroundStyle(.pink)
                        .padding(.top, -90)
                        .font(.system(size: 43))
                    Text(bmiBrain.bmiVal)
                        .textModifier()
                        .padding(.top, -25)
                    Text("Your BMI Category is:")
                        .textModifier()
                        .padding(.top, 10)
                    Text("\"\(bmiBrain.categoryBMI())\"")
                        .padding(.top, 20)
                        .textModifier()
                    Button(action:
                            {
                        let bmiViewModel = BMIViewModel(weight: Int(bmiBrain.weight), height: Int(bmiBrain.height), bmiVal: bmiBrain.bmiVal)
                        bmiViewModel.saveSelections(bmiBrain: bmiBrain)

                    })
                    {      Text("Save")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)

                }
            }
    }
}

#Preview {
    BMIResultView(bmiBrain: .constant(BMIBrain(weight: 50, height: 50)))
}
