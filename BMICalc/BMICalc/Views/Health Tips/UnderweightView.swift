//
//  UnderweightView.swift
//  SideMenuTutorial
//
//  Created by Susmitha Perikala on 27/11/24.
//
//  Health Tips for Underweight Category.
import SwiftUI

struct UnderweightView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Health Tips for Underweight Individuals")
                    .font(.title)
                    .foregroundStyle(.darkorange)
                    .fontWeight(.bold)
                    .padding(.top)

                VStack(alignment: .leading, spacing: 10) {
                    Text("🧡 Focus on nutrient-dense foods – choose healthy, high-calorie options.")
                    Text("🧡 Include lean proteins like chicken, fish, and beans to build muscle.")
                    Text("🧡 Eat more frequently – aim for 5-6 smaller meals a day.")
                    Text("🧡 Add healthy fats like nuts, seeds, and avocado to your diet.")
                    Text("🧡 Incorporate strength training to improve muscle mass.")
                    Text("🧡 Prioritize sleep and stress management to support overall health.")
                }
                .font(.body)
                .padding(.horizontal)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Underweight")
    }
}

#Preview {
    UnderweightView()
}
