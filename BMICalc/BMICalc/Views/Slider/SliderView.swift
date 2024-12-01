// Generalized View for Sliders.

import SwiftUI

struct SliderView: View {

    let singleSlider: Sliders
    @Binding var value: Double
    var body: some View {
        Text("\(singleSlider.title): \(Int(value)) \(singleSlider.units)")
            .foregroundStyle(.orange)
        HStack {
            Slider(value: $value, in: 0...200)
                .tint(singleSlider.tintColor)
        }
    }
}

#Preview {
    SliderView(singleSlider: .weight, value: .constant(50))

}
