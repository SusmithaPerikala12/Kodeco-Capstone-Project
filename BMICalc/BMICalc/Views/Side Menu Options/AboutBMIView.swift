//
//  AboutBMIView.swift
//  BMICalc
//
//  Created by Susmitha Perikala on 13/11/24.
//

import SwiftUI
// swiftlint:disable all
// swiftlint:disable:previous blanket_disable_command

struct AboutBMIView: View {
    var body: some View {
        ScrollView {
            ZStack {
                VStack(alignment: .leading, spacing: 20) {
                    Text("What is BMI?")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    Text("BMI stands for Body Mass Index. It is a simple, yet effective tool to assess whether a person has a healthy body weight in relation to their height. It is calculated by dividing a person's weight (in kilograms) by the square of their height (in meters).")
                        .font(.body)
                        .padding(.horizontal)
                    
                    Text("How is BMI Used?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    
                    Text("BMI is used as an indicator to categorize individuals into different weight groups, such as underweight, normal weight, overweight, and obese. It can help identify potential health risks related to being underweight or overweight.")
                        .font(.body)
                        .padding(.horizontal)
                    
                    Text("Interpreting BMI Results:")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    
                    Text("""
                                \(Image(systemName: "star.fill")) Underweight: BMI less than 18.5
                                \(Image(systemName: "star.fill")) Normal weight: BMI between 18.5 and 24.9
                                \(Image(systemName: "star.fill")) Overweight: BMI between 25 and 29.9
                                \(Image(systemName: "star.fill")) Obese: BMI of 30 or higher
                                """)
                    .font(.body)
                    .padding(.horizontal)
                    
                    Text("Please note, BMI is a general guideline and does not account for muscle mass, bone density, or other factors. It's always important to consult a healthcare provider for a comprehensive health assessment.")
                        .font(.body)
                        .padding()
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
        .padding(.vertical, 1)
        .background {
            LinearGradient(gradient: Gradient(colors: [.green, .white, .white, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    AboutBMIView()
}
