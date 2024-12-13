//
//  ObesityView.swift
//  SideMenuTutorial
//
//  Created by Susmitha Perikala on 27/11/24.
//
//  Health Tips for Obesity Category.
import SwiftUI

struct ObesityView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Health Tips for Obese Individuals")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                    .foregroundStyle(.darkred)

                VStack(alignment: .leading, spacing: 10) {
                    Text("❤️ Start with small, achievable changes in your diet and lifestyle.")
                    Text("❤️ Focus on whole foods and limit processed foods and sugary drinks.")
                    Text("❤️ Gradually increase physical activity, aiming for at least 150 minutes per week.")
                    Text("❤️ Work with a healthcare professional to set realistic weight loss goals.")
                    Text("❤️ Prioritize mental health – seek support if needed.")
                    Text("❤️ Celebrate progress, not perfection, and stay consistent.")
                }
                .font(.body)
                .padding(.horizontal)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Obesity")
    }
}

#Preview {
    ObesityView()
}
