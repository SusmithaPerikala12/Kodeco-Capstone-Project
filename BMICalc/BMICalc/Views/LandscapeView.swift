// Landscape View for Home page.
import SwiftUI

struct LandscapeView: View {
    @Binding var bmiBrain: BMIBrain

    var body: some View {
        HStack(spacing: 16) {
            ImageTextView()
            SliderStackView(bmiBrain: $bmiBrain)
        }
    }
}

#Preview(traits: .landscapeLeft) {
    LandscapeView(bmiBrain: .constant(BMIBrain(weight: 50, height: 50)))
        .padding()
}
