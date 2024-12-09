//
//  DisclosureView.swift
//  SideMenuTutorial
//
//  Created by Susmitha Perikala on 27/11/24.
//

import SwiftUI

struct TipsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                DisclosureGroup {
                    UnderweightView()
                } label: {
                    Text("\(Image(systemName: "heart.circle.fill")) Under Weight")
                        .foregroundStyle(.darkorange)
                        .fontWeight(.semibold)
                }
                .accentColor(.darkorange)
                DisclosureGroup {
                    OverweightView()
                } label: {
                    Text("\(Image(systemName: "heart.circle.fill")) Over Weight")
                        .foregroundStyle(.pink)
                        .fontWeight(.semibold)
                }
                .accentColor(.pink)
                DisclosureGroup {
                    ObesityView()
                } label: {
                    Text("\(Image(systemName: "heart.circle.fill")) Obesity")
                        .foregroundStyle(.darkred)
                        .fontWeight(.semibold)
                }
                .accentColor(.darkred)
            }
            .padding(.vertical, 12)
        }
        .background {
            LinearGradient(gradient: Gradient(colors: [.white, .white, .white, .white, .coral, .white]),
            startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
        }
        .contentMargins(.horizontal, 16.0, for: .scrollContent)
    }
}

#Preview {
    TipsView()
}
