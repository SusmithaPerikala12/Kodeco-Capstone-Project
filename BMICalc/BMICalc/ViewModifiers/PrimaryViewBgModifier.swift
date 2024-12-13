// Custom Modifier 
import Foundation
import SwiftUI

struct PrimaryViewBgModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .padding()
            .background(.pink.gradient, in: .rect(cornerRadius: 12))
    }
}

struct MovingButton: ViewModifier {
    @State private var animationProgress: CGFloat = 0.0
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.title2)
            .frame(width: 200, height: 60)
            .foregroundStyle(.pink)
            .bold()
            .background(
                Capsule()
                    .stroke(
                        LinearGradient(
                            gradient: Gradient(colors: [.coral, .pink]),
                            startPoint: .init(x: animationProgress, y: 0.5),
                            endPoint: .init(x: animationProgress + 0.2, y: 0.5) // Use .init for CGPoint
                        ),
                        lineWidth: 6
                    )
            )
            .onAppear {
                withAnimation(.linear(duration: 2).repeatForever(autoreverses: true)) {
                    self.animationProgress = 1.0
                }
            }
            .padding(.top, 30)
    }
}

extension View {
    func primaryBg() -> some View {
        modifier(PrimaryViewBgModifier())
    }
    func movingbutton() -> some View {
        modifier(MovingButton())
    }
}
