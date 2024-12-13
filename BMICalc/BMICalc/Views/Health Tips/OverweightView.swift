//
//  OverweightView.swift
//  SideMenuTutorial
//
//  Created by Susmitha Perikala on 27/11/24.
//
//  Health Tips for Overweight Category.
import SwiftUI

struct OverweightView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Health Tips for Overweight Individuals")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                    .foregroundStyle(.pink)

                VStack(alignment: .leading, spacing: 10) {
                    Text("🩷 Maintain a balanced diet with plenty of fruits and vegetables.")
                    Text("🩷 Focus on portion control to manage calorie intake.")
                    Text("🩷 Stay active – aim for 30 minutes of exercise most days.")
                    Text("🩷 Include strength training to boost metabolism.")
                    Text("🩷 Get enough sleep – lack of rest can affect weight loss.")
                    Text("🩷 Drink plenty of water to stay hydrated and support your metabolism.")
                }
                .font(.body)
                .padding(.horizontal)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Overweight")
    }
}

#Preview {
    OverweightView()
}
