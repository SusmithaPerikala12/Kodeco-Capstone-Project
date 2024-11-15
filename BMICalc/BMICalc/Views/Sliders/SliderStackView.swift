// View contains two Sliders : weight, height.
import SwiftUI

struct SliderStackView: View {

    @Binding var bmiBrain: BMIBrain
    var body: some View {
        NavigationView {
            VStack {
                SliderView(singleSlider: .weight, value: $bmiBrain.weight)
                SliderView(singleSlider: .height, value: $bmiBrain.height)
                NavigationLink(destination: BMIResultView(bmiBrain: $bmiBrain)) {
                    Text("Calculate")
                    .primaryBg()
                }

            }
        } .tint(Color(.pink))
    }

}

#Preview {
    SliderStackView(bmiBrain: .constant(BMIBrain(weight: 50, height: 50)))
        .padding()
}
