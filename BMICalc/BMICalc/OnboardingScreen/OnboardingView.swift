//
//  OnboardingView.swift
//  OnboardingScreen
//
//  Created by Susmitha Perikala on 02/12/24.
//

import SwiftUI

var totalPages = 3
// swiftlint:disable all
// swiftlint:disable:previous blanket_disable_command

struct OnboardingView: View {
    @AppStorage("currentPage") var currentPage = 1
    var body: some View {
        ZStack {
            if currentPage == 1 {
                ScreenView(image: "bmiOnboardingImage", title: "Calculate BMI", details: "This app makes tracking your health easy! Input your height and weight to calculate your BMI and store the data for future reference.")
            } else if currentPage == 2 {
                ScreenView(image: "healthTips", title: "Health Tips", details: "Our app provides personalized wellness recommendations tailored to your individual Body Mass Index (BMI)")
            } else {
                ScreenView(image: "positive", title: "Positive Quotes", details: "Unlock a world of positivity and well-being with our free app! Explore a handpicked collection of inspiring quotes designed to uplift your spirits and nurture your mind.")
            }
        }
    }
}

struct ScreenView: View {
    @AppStorage("currentPage") var currentPage = 1
    var image: String
    var title: String
    var details: String
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    if currentPage == 1 {
                        Text("Hello Users!")
                            .font(.title)
                            .fontWeight(.semibold)
                    } else {
                        Button {
                            currentPage -= 1
                        } label: {
                            Image(systemName: "chevron.left")
                                .foregroundStyle(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(.black)
                                .opacity(0.4)
                                .clipShape(.circle)
                        }
                    }
                    
                    Spacer()

                    Button {
                        currentPage = 4
                    } label: {
                        Text("Skip")
                            .fontWeight(.semibold)
                    }
                }
                .padding()
                .foregroundStyle(.pink)

                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()

                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .kerning(1.2)
                    .padding(.top)
                    .padding(.bottom, 5)
                    .foregroundStyle(.green)

                Text(details)
                    .font(.body)
                    .fontWeight(.regular)
                    .padding([.leading, .trailing])
                    .multilineTextAlignment(.center)
                    .padding()

                Spacer(minLength: 0)

                HStack {
                    if currentPage == 1 {
                        Color.pink.frame(height: 8 / UIScreen.main.scale)
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                    } else if currentPage == 2 {
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                        Color.pink.frame(height: 8 / UIScreen.main.scale)
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                    } else if currentPage == 3 {
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                        Color.pink.frame(height: 8 / UIScreen.main.scale)
                    }
                }
                .padding(.horizontal, 35)
                
                Button {
                    if currentPage <= totalPages {
                        currentPage += 1
                    }
                } label: {
                    if currentPage == 3 {
                        Text("Get Started..")
                            .fontWeight(.semibold)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundStyle(.white)
                            .background(.pink)
                            .clipShape(.capsule)
                            .padding(.horizontal, 16)
                    } else {
                        Text("Next")
                            .fontWeight(.semibold)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundStyle(.white)
                            .background(.pink)
                            .clipShape(.capsule)
                            .padding(.horizontal, 16)
                    }
                }
            }
        }
    }
}

#Preview {
    OnboardingView()
}
