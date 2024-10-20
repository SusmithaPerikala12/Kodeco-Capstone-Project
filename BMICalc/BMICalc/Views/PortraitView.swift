//Portrait View for Home page.
import SwiftUI

struct PortraitView: View {
    
    
    @Binding var weight: Double
    @Binding var height: Double
  
    
    var body: some View {
        VStack(spacing: 16) {
            ImageTextView()
            VStack {
                SliderStackView(weight: $weight, height: $height)
            }
        }
    }
}

#Preview {
    PortraitView(weight: .constant(50), height: .constant(50))
        .padding()
}
