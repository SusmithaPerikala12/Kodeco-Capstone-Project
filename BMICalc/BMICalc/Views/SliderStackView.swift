//View contains two Sliders : weight, height.
import SwiftUI

struct SliderStackView: View {

    @Binding var weight: Double
    @Binding var height: Double
    
    var body: some View {
        VStack {
            SliderView(singleSlider: .weight, value: $weight)
            SliderView(singleSlider: .height, value: $height)
            
            Button("Calculate") {
                //To be updated later
                
            }
            .primaryBg()
        }
    }
    
}

#Preview {
    SliderStackView(weight: .constant(50), height: .constant(50))
        .padding()
}
