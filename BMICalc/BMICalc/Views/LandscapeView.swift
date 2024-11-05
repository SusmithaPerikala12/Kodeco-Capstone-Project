// Landscape View for Home page.
import SwiftUI

struct LandscapeView: View {
    @Binding var weight: Double
    @Binding var height: Double

    var body: some View {
        HStack(spacing: 16) {
            ImageTextView()
            SliderStackView(weight: $weight, height: $height)
        }
    }
}

#Preview(traits: .landscapeLeft) {
    LandscapeView(weight: .constant(50), height: .constant(50))
        .padding()
}
