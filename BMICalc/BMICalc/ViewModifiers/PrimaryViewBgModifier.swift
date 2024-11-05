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
extension View {
    func primaryBg() -> some View {
        modifier(PrimaryViewBgModifier())
    }
}
