// This View contains Image and Text aligned in Vstack.

import SwiftUI

struct ImageTextView: View {
    var body: some View {
      VStack {
        Text("BMI Calculator")
          .font(.largeTitle)
          .foregroundStyle(.pink)
        Image("HomeBackground")
              .resizable()
              .scaledToFit()

      }
    }
}

#Preview {
    ImageTextView()
}
