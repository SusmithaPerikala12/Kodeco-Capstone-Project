//
//  QuoteView.swift
//  QuotesAPI
//
//  Created by Susmitha Perikala on 25/11/24.
//
import SwiftUI

struct QuoteView: View {
    @StateObject private var viewModel = QuoteViewModel()
    var brandGradient = Gradient(colors: [Color(.orange), Color.pink, Color.purple])

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.orange, .white, .white, .orange]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Start your day with a positive thought and watch the world change around you.")
                    .font(.title3)
                    .fontWeight(.medium)
                    .italic()
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding()

                Text("\"\(viewModel.quote)\"")
                    .font(.title2)
                    .italic()
                    .multilineTextAlignment(.center)
                    .foregroundStyle(LinearGradient(
                        gradient: brandGradient,
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing))
                    .shadow(color: .gray.opacity(0.7), radius: 10, x: 5, y: 5)
                    .scaleEffect(1.0)
                    .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: 1.0)
                    .padding()

                if viewModel.isLoading {
                    ProgressView()
                } else {
                    Button(action: {
                        Task {
                            await viewModel.fetchQuote()
                        }
                    }) {
                        // swiftlint:disable:previous multiple_closures_with_trailing_closure
                        Text("Push Your Limits!")
                            .bold()
                            .frame(width: 200, height: 50)
                            .foregroundColor(.pink)
                            .overlay(Capsule().stroke(LinearGradient(gradient: brandGradient,
                                                                     startPoint: .leading,
                                                                     endPoint: .trailing),
                                                      lineWidth: 5))
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}

#Preview {
    QuoteView()
}
