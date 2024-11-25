//
//  BMIResultView.swift
//  BMICalc
//
//  Created by Susmitha Perikala on 05/11/24.
//

import SwiftUI

struct BMIResultView: View {

    @State var bmiVal: Double
    var body: some View {

            ZStack {
                LinearGradient(gradient: Gradient(colors: [.pink, .white, .white, .pink]),
                startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                VStack {
                    Text("BMI Value: ")
                        .fontWeight(.bold)
                        .foregroundStyle(.pink)
                        .padding(.top, -100)
                        .font(.system(size: 43))
                    Text("\(bmiVal, specifier: "%.2f")")
                        .padding(.top, -45)
                        .foregroundStyle(.pink)
                        .fontWeight(.bold)
                        .font(.system(size: 25))

                }
            }
    }
}

#Preview {
    BMIResultView(bmiVal: 50.05)
}
