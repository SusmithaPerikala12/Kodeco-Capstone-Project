//
//  UnderweightView.swift
//  BMICalc
//
//  Created by Susmitha Perikala on 25/11/24.
//

import SwiftUI

struct UnderweightView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Health Tips for Underweight Individuals")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)

                VStack(alignment: .leading, spacing: 10) {
                    Text("- Focus on nutrient-dense foods – choose healthy, high-calorie options.")
                    Text("- Include lean proteins like chicken, fish, and beans to build muscle.")
                    Text("- Eat more frequently – aim for 5-6 smaller meals a day.")
                    Text("- Add healthy fats like nuts, seeds, and avocado to your diet.")
                    Text("- Incorporate strength training to improve muscle mass.")
                    Text("- Prioritize sleep and stress management to support overall health.")
                }
                .font(.body)
                .padding(.horizontal)

                Spacer()
            }
            .padding()
        }

    }
}

#Preview {
    UnderweightView()
}
