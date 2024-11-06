// View contains two Sliders : weight, height.
import SwiftUI

struct SliderStackView: View {

    @Binding var weight: Double
    @Binding var height: Double
    var body: some View {
        NavigationView {
            VStack {
                SliderView(singleSlider: .weight, value: $weight)
                SliderView(singleSlider: .height, value: $height)

                NavigationLink(destination: BMIResultView(bmiVal: calculateBMI())) {
                    Text("Calculate")
                    .primaryBg()
                }

            }
        } .tint(Color(.pink))
    }
    func calculateBMI() -> Double {
        let heightInMeters = height / 100
        return weight / (heightInMeters * heightInMeters)
    }

}

#Preview {
    SliderStackView(weight: .constant(50), height: .constant(50))
        .padding()
}
