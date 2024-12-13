// This contains Sidemenu Header Details like Name, etc.
import SwiftUI

struct SideMenuHeaderView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        HStack {
            Image(systemName: "star.circle")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)

            VStack(alignment: .leading, spacing: 6) {
                Text("Welcome!!!")
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    SideMenuHeaderView()
}
