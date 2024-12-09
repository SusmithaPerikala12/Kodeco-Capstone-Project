// This contains Home Page View.
import SwiftUI

struct HomeView: View {
    @State private var bmiBrain = BMIBrain(weight: 50, height: 50)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass

    // adjusting for both portrait and landscape mode using AnyLayout.
    var layout: AnyLayout {
        landscapeIsCompact ? AnyLayout(HStackLayout(spacing: 16)) : AnyLayout(VStackLayout(spacing: 16))
    }

    var landscapeIsCompact: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .compact ||
        horizontalSizeClass == .regular && verticalSizeClass == .compact
    }

    var body: some View {
        layout {
            ImageTextView()
            SliderStackView(bmiBrain: $bmiBrain)
        }
        .padding()
    }

}

#Preview {
    HomeView()
}

#Preview(traits: .landscapeLeft) {
    HomeView()
}
