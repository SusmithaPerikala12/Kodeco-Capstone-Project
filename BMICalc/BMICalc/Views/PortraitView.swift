// Portrait View for Home page.
import SwiftUI

struct PortraitView: View {
    @Binding var bmiBrain: BMIBrain

    var body: some View {
        VStack(spacing: 16) {
            ImageTextView()

            VStack {
                SliderStackView(bmiBrain: $bmiBrain)
            }
        }
    }
}

#Preview {
    PortraitView(bmiBrain: .constant(BMIBrain(weight: 50, height: 50)))
        .padding()
}
