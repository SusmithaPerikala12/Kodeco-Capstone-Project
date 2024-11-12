//This contains Sidemenu Header Details like Name, etc.
import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48,height: 48)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            VStack(alignment: .leading, spacing: 6) {
                Text("Susmitha Perikala")
                    .font(.subheadline)
                
            }
        }
    }
}

#Preview {
    SideMenuHeaderView()
}
